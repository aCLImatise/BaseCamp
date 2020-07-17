version 1.0

task CromwellTools {
  input {
    Boolean? v
  }
  command <<<
    cromwell-tools \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}