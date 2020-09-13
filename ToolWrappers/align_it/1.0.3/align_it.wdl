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
    Boolean? rank_by
    Boolean? func_group
    Boolean? epsilon
    Boolean? merge
    Boolean? no_normal
    Boolean? no_hybrid
    Boolean? with_exclusion
    Boolean? score_only
    Boolean? v
    Boolean? info
    Boolean? quiet
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
      ~{if (rank_by) then "--rankBy" else ""} \
      ~{if (func_group) then "--funcGroup" else ""} \
      ~{if (epsilon) then "--epsilon" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (no_normal) then "--noNormal" else ""} \
      ~{if (no_hybrid) then "--noHybrid" else ""} \
      ~{if (with_exclusion) then "--withExclusion" else ""} \
      ~{if (score_only) then "--scoreOnly" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (quiet) then "--quiet" else ""}
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
    best: "<int>"
    rank_by: "<TANIMOTO|TVERSKY_REF|TVERSKY_DB>"
    func_group: "<AROM|HDON|HACC|LIPO|CHARGE>"
    epsilon: "<double>"
    merge: ""
    no_normal: ""
    no_hybrid: ""
    with_exclusion: ""
    score_only: ""
    v: ""
    info: "<option>"
    quiet: ""
  }
  output {
    File out_stdout = stdout()
  }
}