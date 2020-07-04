version 1.0

task GsutilRb {
  input {
    Boolean? f
  }
  command <<<
    gsutil rb \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    f: ""
  }
}