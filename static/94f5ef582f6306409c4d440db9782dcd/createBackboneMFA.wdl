version 1.0

task CreateBackboneMFA {
  input {
    String? inputInputIntervalFile
    String? outputOutputMfaName
  }
  command <<<
    createBackboneMFA \
      ~{inputInputIntervalFile} \
      ~{outputOutputMfaName}
  >>>
}