version 1.0

task CompileSpliceCands {
  input {
    Boolean fF
    Boolean gG
    Boolean cC
    Boolean tT
    Boolean mM
    Boolean dD
    Boolean iI
  }
  command <<<
    compileSpliceCands \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-d" false="" dD} \
      ~{true="-i" false="" iI}
  >>>
}