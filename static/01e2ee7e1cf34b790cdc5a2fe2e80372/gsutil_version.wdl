version 1.0

task GsutilVersion {
  input {
    Boolean lL
  }
  command <<<
    gsutil version \
      ~{true="-l" false="" lL}
  >>>
}