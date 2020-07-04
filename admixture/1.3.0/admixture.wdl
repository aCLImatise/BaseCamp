version 1.0

task Admixture {
  input {
    Boolean? jx
    String? seed
    String? set_major_criterion
    String? set_minor_criterion
    Boolean? b
  }
  command <<<
    admixture \
      ~{true="-jX" false="" jx} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(set_major_criterion) then ("-C " +  '"' + set_major_criterion + '"') else ""} \
      ~{if defined(set_minor_criterion) then ("-c " +  '"' + set_minor_criterion + '"') else ""} \
      ~{true="-B" false="" b}
  >>>
  parameter_meta {
    jx: ": do computation on X threads                                "
    seed: ": use random seed X for initialization                       "
    set_major_criterion: ": set major convergence criterion (for point estimation)             "
    set_minor_criterion: ": set minor convergence criterion (for bootstrap and CV reestimates) "
    b: "[X]      : do bootstrapping [with X replicates]                         "
  }
}