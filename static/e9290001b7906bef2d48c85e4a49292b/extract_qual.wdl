version 1.0

task ExtractQual {
  input {
    Boolean? r
  }
  command <<<
    extract_qual \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    r: ""
  }
}