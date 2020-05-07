version 1.0

task Tandem2pin {
  input {
    Boolean enzymeEnzyme
    Boolean maxMaxMass
    String? targetTargetFile
    String? decoyDecoyFile
  }
  command <<<
    tandem2pin \
      ~{targetTargetFile} \
      ~{true="--enzyme" false="" enzymeEnzyme} \
      ~{true="--max-mass" false="" maxMaxMass} \
      ~{decoyDecoyFile}
  >>>
}