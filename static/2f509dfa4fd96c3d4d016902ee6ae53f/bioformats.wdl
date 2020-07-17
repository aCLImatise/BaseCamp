version 1.0

task Bioformats {
  input {
    Boolean? v
  }
  command <<<
    bioformats \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}