version 1.0

task Taxator {
  input {
    Boolean citationCitation
    Boolean advancedAdvancedOptions
    Boolean aA
    Boolean gG
    Boolean qQ
    Boolean vV
    Boolean fF
    Boolean iI
    Boolean pP
    Boolean lL
  }
  command <<<
    taxator \
      ~{true="--citation" false="" citationCitation} \
      ~{true="--advanced-options" false="" advancedAdvancedOptions} \
      ~{true="-a" false="" aA} \
      ~{true="-g" false="" gG} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-f" false="" fF} \
      ~{true="-i" false="" iI} \
      ~{true="-p" false="" pP} \
      ~{true="-l" false="" lL}
  >>>
}