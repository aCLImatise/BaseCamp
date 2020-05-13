version 1.0

task ToMultiFastA {
  input {
    String? inputInputIntervalFile
    String? outputOutputBasename
  }
  command <<<
    toMultiFastA \
      ~{inputInputIntervalFile} \
      ~{outputOutputBasename}
  >>>
}