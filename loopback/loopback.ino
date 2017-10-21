void setup() {
    Serial.begin(115200);

    Serial.println("Looping back data from Serial");
}

void loop() {
    if (Serial.available()) {
        Serial.write(Serial.read());
    }
}
