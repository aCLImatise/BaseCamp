version 1.0

task AssessAssembly {
  input {
    Boolean rR
    Boolean iI
    Boolean cC
    Boolean cC
    Boolean hH
    Boolean tT
    Boolean pP
    Boolean tT
    Boolean bB
    Boolean lL
    Boolean eE
  }
  command <<<
    assess_assembly \
      ~{true="-r" false="" rR} \
      ~{true="-i" false="" iI} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-H" false="" hH} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{true="-T" false="" tT} \
      ~{true="-b" false="" bB} \
      ~{true="-l" false="" lL} \
      ~{true="-e" false="" eE}
  >>>
}