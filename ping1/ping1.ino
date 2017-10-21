void setup() {
    Serial.begin(115200);
    Serial1.begin(9600);

    Serial.println("Pinging Serial1...");
}

void loop() {
    Serial1.write("Testing...\n");
    delay(1000);
}
