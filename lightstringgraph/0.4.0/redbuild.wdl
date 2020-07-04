version 1.0

task Redbuild {
  input {
    String? b
    Int? m
    String? g
    Boolean? r
  }
  command <<<
    redbuild \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    b: ""
    m: ""
    g: ""
    r: ""
  }
}