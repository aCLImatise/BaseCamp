version 1.0

task MismatchCounter {
  input {
    Boolean aA
    Boolean eE
    Boolean cC
  }
  command <<<
    mismatchCounter \
      ~{true="-a" false="" aA} \
      ~{true="-e" false="" eE} \
      ~{true="-c" false="" cC}
  >>>
}