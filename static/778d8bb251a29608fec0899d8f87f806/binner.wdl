version 1.0

task Binner {
  input {
    Boolean citationCitation
    Boolean advancedAdvancedOptions
    Boolean nN
    Boolean sS
    Boolean jJ
    Boolean iI
    Boolean fF
    Boolean lL
  }
  command <<<
    binner \
      ~{true="--citation" false="" citationCitation} \
      ~{true="--advanced-options" false="" advancedAdvancedOptions} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-j" false="" jJ} \
      ~{true="-i" false="" iI} \
      ~{true="-f" false="" fF} \
      ~{true="-l" false="" lL}
  >>>
}