version 1.0

task Pca {
  input {
    String? l
    Boolean? e
    Boolean? o
    Boolean? i
    String must
    String all
    String be
    String specified
  }
  command <<<
    pca \
      ~{must} \
      ~{all} \
      ~{be} \
      ~{specified} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if (e) then "-e" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  parameter_meta {
    l: ""
    e: ""
    o: ""
    i: ""
    must: ""
    all: ""
    be: ""
    specified: ""
  }
  output {
    File out_stdout = stdout()
  }
}