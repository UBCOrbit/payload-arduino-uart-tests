void setup() {
    Serial.begin(115200);
}

void loop() {
    Serial.write("Testing...\n");
    delay(1000);
}
