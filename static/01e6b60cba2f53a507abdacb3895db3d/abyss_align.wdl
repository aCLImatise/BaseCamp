version 1.0

task AbyssAlign {
  input {
    Boolean? verbose
    String? di_align_d
    File? di_align_m
    File? di_align_p
    String fast_a
  }
  command <<<
    abyss-align \
      ~{fast_a} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(di_align_d) then ("--dialign-d " +  '"' + di_align_d + '"') else ""} \
      ~{if defined(di_align_m) then ("--dialign-m " +  '"' + di_align_m + '"') else ""} \
      ~{if defined(di_align_p) then ("--dialign-p " +  '"' + di_align_p + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    di_align_d: "dialign debug level, default: 0"
    di_align_m: "score matrix, default: dna_matrix.scr"
    di_align_p: "diagonal length probability distribution default: dna_diag_prob_100_exp_550000"
    fast_a: "sequences in FASTA format"
  }
}