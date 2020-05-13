version 1.0

task GsutilHelpHash {
  input {
    Boolean cC
    Boolean mM
  }
  command <<<
    gsutil help hash \
      ~{true="-c" false="" cC} \
      ~{true="-m" false="" mM}
  >>>
}