version 1.0

task DshIntersectBed {
  input {
    Boolean aAInputFile
    Boolean bBInputFile
    Boolean outputOutputFile
    Boolean strategyStrategy
  }
  command <<<
    dsh-intersect-bed \
      ~{true="--a-input-file" false="" aAInputFile} \
      ~{true="--b-input-file" false="" bBInputFile} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--strategy" false="" strategyStrategy}
  >>>
}