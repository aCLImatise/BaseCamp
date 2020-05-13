version 1.0

task GsutilHelpRm {
  input {
    Boolean fF
    Boolean iI
    Boolean rR
    Boolean aA
  }
  command <<<
    gsutil help rm \
      ~{true="-f" false="" fF} \
      ~{true="-I" false="" iI} \
      ~{true="-R" false="" rR} \
      ~{true="-a" false="" aA}
  >>>
}