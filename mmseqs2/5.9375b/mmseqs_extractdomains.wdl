version 1.0

task MmseqsExtractdomains {
  input {
    Boolean? list_matches_evalue
    Boolean? list_matches_fraction
    Boolean? msa_type
    File? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs extractdomains \
      ~{if (list_matches_evalue) then "-e" else ""} \
      ~{if (list_matches_fraction) then "-c" else ""} \
      ~{if (msa_type) then "--msa-type" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]"
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    msa_type: "2               MSA Type: cA3M 0, A3M 1, FASTA 2"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}