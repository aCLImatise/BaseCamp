version 1.0

task MmseqsExtractdomains {
  input {
    Float? list_matches_evalue
    Float? list_matches_fraction
    Int? msa_type
    File? sub_mat
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs extractdomains \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(msa_type) then ("--msa-type " +  '"' + msa_type + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    list_matches_evalue: "List matches below this E-value (range 0.0-inf) [1.000E-03]"
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    msa_type: "MSA Type: 0: cA3M, 1: A3M, 2: FASTA [2]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}