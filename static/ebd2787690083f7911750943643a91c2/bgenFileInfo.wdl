version 1.0

task BgenFileInfo {
  input {
    Boolean inInBgEn
    Boolean inInSample
  }
  command <<<
    bgenFileInfo \
      ~{true="--inBgen" false="" inInBgEn} \
      ~{true="--inSample" false="" inInSample}
  >>>
}