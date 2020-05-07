version 1.0

task GsutilHelpVersion {
  input {
    Boolean lL
  }
  command <<<
    gsutil help version \
      ~{true="-l" false="" lL}
  >>>
}