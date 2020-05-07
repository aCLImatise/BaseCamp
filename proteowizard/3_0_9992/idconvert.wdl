version 1.0

task Idconvert {
  input {
    Boolean fF
    Boolean oO
    Boolean cC
    Boolean eE
    Boolean mzMzIdentMl
    Boolean pepPepXml
    Boolean textText
    Boolean vV
    File? fileFileMasks
  }
  command <<<
    idconvert \
      ~{fileFileMasks} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-c" false="" cC} \
      ~{true="-e" false="" eE} \
      ~{true="--mzIdentML" false="" mzMzIdentMl} \
      ~{true="--pepXML" false="" pepPepXml} \
      ~{true="--text" false="" textText} \
      ~{true="-v" false="" vV}
  >>>
}