version 1.0

task Alignit {
  input {
    Boolean? reference
    Boolean? reftype
    Boolean? dbase
    Boolean? dbtype
    Boolean? pharmacophore
    Boolean? out
    Boolean? out_type
    Boolean? scores
    Boolean? cut_off
    Boolean? best
    Boolean? epsilon
  }
  command <<<
    align_it \
      ~{if (reference) then "--reference" else ""} \
      ~{if (reftype) then "--refType" else ""} \
      ~{if (dbase) then "--dbase" else ""} \
      ~{if (dbtype) then "--dbType" else ""} \
      ~{if (pharmacophore) then "--pharmacophore" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (out_type) then "--outType" else ""} \
      ~{if (scores) then "--scores" else ""} \
      ~{if (cut_off) then "--cutOff" else ""} \
      ~{if (best) then "--best" else ""} \
      ~{if (epsilon) then "--epsilon" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "<file>"
    reftype: "<type>"
    dbase: "<file>"
    dbtype: "<type>"
    pharmacophore: "<file>"
    out: "<file>"
    out_type: "<type>"
    scores: "<file>"
    cut_off: "<double>"
    best: "<int>"
    epsilon: "<double>"
  }
  output {
    File out_stdout = stdout()
  }
}