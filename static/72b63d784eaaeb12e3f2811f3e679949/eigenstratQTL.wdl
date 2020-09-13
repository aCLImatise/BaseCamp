version 1.0

task EigenstratQTL {
  input {
    String? o
    Boolean? p
    Boolean? j
    Boolean? i
    String must
    String all
    String be
    String specified
  }
  command <<<
    eigenstratQTL \
      ~{must} \
      ~{all} \
      ~{be} \
      ~{specified} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (j) then "-j" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  parameter_meta {
    o: ""
    p: ""
    j: ""
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