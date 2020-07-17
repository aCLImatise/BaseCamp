version 1.0

task GsutilHash {
  input {
    Boolean? c
    Boolean? m
  }
  command <<<
    gsutil hash \
      ~{true="-c" false="" c} \
      ~{true="-m" false="" m}
  >>>
  parameter_meta {
    c: ""
    m: ""
  }
}