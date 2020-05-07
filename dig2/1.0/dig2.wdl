version 1.0

task Dig2 {
  input {
    String? digDig
    String? fastFastASequenceDatabase
    String? settingsSettings
  }
  command <<<
    dig2 \
      ~{digDig} \
      ~{fastFastASequenceDatabase} \
      ~{settingsSettings}
  >>>
}