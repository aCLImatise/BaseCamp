version 1.0

task Gsutil {
  input {
    Boolean? d
    Boolean? dd
    String? h
  }
  command <<<
    gsutil \
      ~{true="-D" false="" d} \
      ~{true="-DD" false="" dd} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    dd: ""
    h: ""
  }
}