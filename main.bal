
public function main() returns error? {
    Logger infoLoggerResult = logger();
    // infoLoggerResult.log(message = "This is a sample message");

    string message = "This is a sample message";
    infoLoggerResult.log(message = message, a = "foo", b = "bar", c = 100);
}

