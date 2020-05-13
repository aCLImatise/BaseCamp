version 1.0

task GsutilRb {
  input {
    Boolean fF
  }
  command <<<
    gsutil rb \
      ~{true="-f" false="" fF}
  >>>
}