import ballerina/http;
import ballerina/io;

service /hello on new http:Listener(9090) {
    resource function get sayHello() returns string|error {
        return io:fileReadString("hello.txt");
    }
}
