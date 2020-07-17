version 1.0

task Pca {
  input {
    Boolean? i
    Boolean? o
    Boolean? e
    String? l
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
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o} \
      ~{true="-e" false="" e} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    e: ""
    l: ""
    must: ""
    all: ""
    be: ""
    specified: ""
  }
}