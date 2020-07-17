version 1.0

task PyprophetBackpropagate {
  input {
    File? in
    File? out
    File? apply_scores
  }
  command <<<
    pyprophet backpropagate \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(apply_scores) then ("--apply_scores " +  '"' + apply_scores + '"') else ""}
  >>>
  parameter_meta {
    in: "Single run PyProphet input file.  [required]"
    out: "Single run (with multi-run scores) PyProphet output file."
    apply_scores: "PyProphet multi-run scores file to apply.  [required]"
  }
}