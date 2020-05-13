version 1.0

task GsutilRm {
  input {
    Boolean fF
    Boolean iI
    Boolean rR
    Boolean aA
  }
  command <<<
    gsutil rm \
      ~{true="-f" false="" fF} \
      ~{true="-I" false="" iI} \
      ~{true="-R" false="" rR} \
      ~{true="-a" false="" aA}
  >>>
}