version 1.0

task ScalpelExport {
  input {
    Boolean verboseVerbose
    Boolean singleSingle
    Boolean deDeNovo
    Boolean somaticSomatic
    String? commandCommand
    String? optionsOptions
  }
  command <<<
    scalpel-export \
      ~{commandCommand} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--single" false="" singleSingle} \
      ~{true="--denovo" false="" deDeNovo} \
      ~{true="--somatic" false="" somaticSomatic} \
      ~{optionsOptions}
  >>>
}