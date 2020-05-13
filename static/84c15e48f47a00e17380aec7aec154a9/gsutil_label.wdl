version 1.0

task GsutilLabel {
  input {
    Boolean lL
    Boolean dD
  }
  command <<<
    gsutil label \
      ~{true="-l" false="" lL} \
      ~{true="-d" false="" dD}
  >>>
}