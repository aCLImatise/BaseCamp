version 1.0

task GsutilDu {
  input {
    Boolean aA
    Boolean cC
    Boolean eE
    Boolean sS
    Boolean xX
  }
  command <<<
    gsutil du \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-e" false="" eE} \
      ~{true="-s" false="" sS} \
      ~{true="-X" false="" xX}
  >>>
}