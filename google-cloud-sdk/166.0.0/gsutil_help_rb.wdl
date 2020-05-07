version 1.0

task GsutilHelpRb {
  input {
    Boolean fF
  }
  command <<<
    gsutil help rb \
      ~{true="-f" false="" fF}
  >>>
}