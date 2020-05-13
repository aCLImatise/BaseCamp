version 1.0

task GsutilHelpLabel {
  input {
    Boolean lL
    Boolean dD
  }
  command <<<
    gsutil help label \
      ~{true="-l" false="" lL} \
      ~{true="-d" false="" dD}
  >>>
}