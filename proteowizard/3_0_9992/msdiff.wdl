version 1.0

task Msdiff {
  input {
    Boolean pP
    Boolean iI
    File? filenameFilename1
    File? filenameFilename2
  }
  command <<<
    msdiff \
      ~{filenameFilename1} \
      ~{true="-p" false="" pP} \
      ~{true="-i" false="" iI} \
      ~{filenameFilename2}
  >>>
}