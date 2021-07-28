import ballerina/io;

class DefaultLogger {
    *Logger;

    KeyValPairs context;
    string logLinePrefix;

    function init(*KeyValPairs context) {
        self.context = context;
        self.logLinePrefix = self.context.entries().reduce(logfmt, "");
    }

    public function log(*KeyValPairs keyVals) {
        string logLine = keyVals.entries().reduce(logfmt, self.logLinePrefix);
        io:println(logLine);
    }
}

function (string, [string, anydata]) returns string logfmt = 
        (combined, kvPair) => let var kvStr = kvPair[0] + "=" + kvPair[1].toBalString()
                                in combined is "" ? kvStr : (combined + " " + kvStr);