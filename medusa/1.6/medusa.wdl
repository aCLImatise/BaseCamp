version 1.0

task Medusa {
  input {
    Boolean dD
    Boolean fF
    Boolean gexGexF
    Boolean iI
    Boolean n50N50
    Boolean oO
    Boolean randomRandom
    Boolean scriptScriptPath
    Boolean vV
    Boolean w2W2
    String? javaJava
  }
  command <<<
    medusa \
      ~{javaJava} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{true="-gexf" false="" gexGexF} \
      ~{true="-i" false="" iI} \
      ~{true="-n50" false="" n50N50} \
      ~{true="-o" false="" oO} \
      ~{true="-random" false="" randomRandom} \
      ~{true="-scriptPath" false="" scriptScriptPath} \
      ~{true="-v" false="" vV} \
      ~{true="-w2" false="" w2W2}
  >>>
}