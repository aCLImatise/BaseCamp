version 1.0

task Admixture {
  input {
    Boolean? jx
    String? seed
    Boolean? method
    String? acceleration
    String? set_major_criterion
    String? set_minor_criterion
    Boolean? b
  }
  command <<<
    admixture \
      ~{if (jx) then "-jX" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if defined(acceleration) then ("--acceleration " +  '"' + acceleration + '"') else ""} \
      ~{if defined(set_major_criterion) then ("-C " +  '"' + set_major_criterion + '"') else ""} \
      ~{if defined(set_minor_criterion) then ("-c " +  '"' + set_minor_criterion + '"') else ""} \
      ~{if (b) then "-B" else ""}
  >>>
  parameter_meta {
    jx: ": do computation on X threads"
    seed: ": use random seed X for initialization"
    method: "=[em|block]     : set method.  block is default"
    acceleration: "|\\nsqs<X> |\\nqn<X>      : set acceleration"
    set_major_criterion: ": set major convergence criterion (for point estimation)"
    set_minor_criterion: ": set minor convergence criterion (for bootstrap and CV reestimates)"
    b: "[X]      : do bootstrapping [with X replicates]"
  }
  output {
    File out_stdout = stdout()
  }
}