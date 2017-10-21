void setup() {
    Serial.begin(115200);
    Serial1.begin(115200);

    Serial.println("Relaying data from Serial to Serial1");
}

void loop() {
    if (Serial.available()) {
        Serial1.write(Serial.read());
    }
}
