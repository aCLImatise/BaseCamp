version 1.0

task Obrms {
  input {
    Boolean? first_only
  }
  command <<<
    obrms \
      ~{true="-firstonly" false="" first_only}
  >>>
  parameter_meta {
    first_only: ""
  }
}