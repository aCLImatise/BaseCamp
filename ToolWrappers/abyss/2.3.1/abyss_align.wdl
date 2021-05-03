version 1.0

task Abyssalign {
  input {
    Boolean? verbose
    Int? di_align_d
    File? di_align_m
    File? di_align_p
    String fast_a
  }
  command <<<
    abyss_align \
      ~{fast_a} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(di_align_d) then ("--dialign-d " +  '"' + di_align_d + '"') else ""} \
      ~{if defined(di_align_m) then ("--dialign-m " +  '"' + di_align_m + '"') else ""} \
      ~{if defined(di_align_p) then ("--dialign-p " +  '"' + di_align_p + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  parameter_meta {
    verbose: "display verbose output"
    di_align_d: "dialign debug level, default: 0"
    di_align_m: "score matrix, default: dna_matrix.scr"
    di_align_p: "diagonal length probability distribution\\ndefault: dna_diag_prob_100_exp_550000"
    fast_a: "sequences in FASTA format"
  }
  output {
    File out_stdout = stdout()
  }
}