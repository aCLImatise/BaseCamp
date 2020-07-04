version 1.0

task LavToPsl {
  input {
    String? target_strand
    String? bed
    File? score_file
    String in_dot_lav
    String out_dot_psl
  }
  command <<<
    lavToPsl \
      ~{in_dot_lav} \
      ~{out_dot_psl} \
      ~{if defined(target_strand) then ("-target-strand " +  '"' + target_strand + '"') else ""} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(score_file) then ("-scoreFile " +  '"' + score_file + '"') else ""}
  >>>
  parameter_meta {
    target_strand: "set the target strand to c (default is no strand)"
    bed: "bed instead of psl"
    score_file: "output lav scores to side file, such that each psl line in out.psl is matched by a score line."
    in_dot_lav: ""
    out_dot_psl: ""
  }
}