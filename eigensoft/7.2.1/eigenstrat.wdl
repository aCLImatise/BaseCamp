version 1.0

task Eigenstrat {
  input {
    Boolean? i
    Boolean? j
    Boolean? p
    String? o
    String must
    String all
    String be
    String specified
  }
  command <<<
    eigenstrat \
      ~{must} \
      ~{all} \
      ~{be} \
      ~{specified} \
      ~{true="-i" false="" i} \
      ~{true="-j" false="" j} \
      ~{true="-p" false="" p} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    j: ""
    p: ""
    o: ""
    must: ""
    all: ""
    be: ""
    specified: ""
  }
}