version 1.0

task GsutilHash {
  input {
    Boolean cC
    Boolean mM
  }
  command <<<
    gsutil hash \
      ~{true="-c" false="" cC} \
      ~{true="-m" false="" mM}
  >>>
}