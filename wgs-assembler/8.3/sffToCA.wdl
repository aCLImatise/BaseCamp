version 1.0

task SffToCA {
  input {
    Boolean linkerLinker
    Boolean linkerLinkerSplit
    Boolean linkerLinkerTrim
    String linkerLinkerDetect
    Boolean nodeNodeDup
    String outputOutput
  }
  command <<<
    sffToCA \
      ~{true="-linker" false="" linkerLinker} \
      ~{true="-linkersplit" false="" linkerLinkerSplit} \
      ~{true="-linkertrim" false="" linkerLinkerTrim} \
      ~{if defined(linkerLinkerDetect) then ("-linkerdetect " +  '"' + linkerLinkerDetect + '"') else ""} \
      ~{true="-nodedup" false="" nodeNodeDup} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""}
  >>>
}