version 1.0

task Cpancover {
  input {
    Boolean? info
    Boolean? version
  }
  command <<<
    cpancover \
      ~{true="-info" false="" info} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    info: ""
    version: ""
  }
}