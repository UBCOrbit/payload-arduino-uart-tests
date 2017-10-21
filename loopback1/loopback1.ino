void setup() {
    Serial.begin(115200);
    Serial1.begin(9600);

    Serial.println("Looping back data from Serial1");
}

void loop() {
    if (Serial1.available()) {
        Serial1.write(Serial1.read());
    }
}
