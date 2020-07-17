version 1.0

task Bmtagger.sh {
  input {
    Boolean? hv
  }
  command <<<
    bmtagger.sh \
      ~{true="-hV" false="" hv}
  >>>
  parameter_meta {
    hv: ""
  }
}