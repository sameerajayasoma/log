import ballerina/time;

configurable string format = "logfmt";
public type Logger object {
    public function log(*KeyValPairs keyVals);
};

// public function infoLogger() returns Logger {
//     return new DefaultLogger();
// }

// public function debugLogger() returns Logger {
//     return new DefaultLogger();
// }

public function logger() returns Logger {
    return new DefaultLogger();
}
public function loggerWithTimestamp() returns Logger {
    time:Utc currentUtc = time:utcNow();
    string utcToString = time:utcToString(currentUtc);
    return new DefaultLogger(timestamp = utcToString);
}

public type KeyValPairs record {|
    anydata ...;
|};

function log(*KeyValPairs kvPairs) {

}


