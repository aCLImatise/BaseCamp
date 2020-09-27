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
    Boolean? rank_by
    Boolean? func_group
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
      ~{if (rank_by) then "--rankBy" else ""} \
      ~{if (func_group) then "--funcGroup" else ""}
  >>>
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
    rank_by: "<TANIMOTO|TVERSKY_REF|TVERSKY_DB>"
    func_group: "<AROM|HDON|HACC|LIPO|CHARGE>\\n-e  --epsilon         <double>\\n-m  --merge\\n-n  --noNormal\\n--noHybrid\\n--withExclusion\\n--scoreOnly"
  }
  output {
    File out_stdout = stdout()
  }
}