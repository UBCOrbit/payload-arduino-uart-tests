void setup() {
    Serial.begin(115200);
    Serial1.begin(115200);

    Serial.println("Relaying data from Serial1 to Serial");
}

void loop() {
    if (Serial1.available()) {
        Serial.write(Serial1.read());
    }
}
