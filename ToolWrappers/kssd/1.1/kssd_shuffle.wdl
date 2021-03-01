version 1.0

task KssdShuffle {
  input {
    Int? half_k_merle_n
    Int? half_sub_strlen
    Int? level
    File? outfile
    Boolean? use_default
    String? option_dot_dot_dot
  }
  command <<<
    kssd shuffle \
      ~{option_dot_dot_dot} \
      ~{if defined(half_k_merle_n) then ("--halfKmerLen " +  '"' + half_k_merle_n + '"') else ""} \
      ~{if defined(half_sub_strlen) then ("--halfSubstrLen " +  '"' + half_sub_strlen + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (use_default) then "--usedefault" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    half_k_merle_n: "a half of the length of k-mer. For proyakat\\ngenome, k = 8 is suggested; for mammals, k = 10 or\\n11 is suggested.[8]"
    half_sub_strlen: "a half of the length of k-mer substring. [5]"
    level: "the level of dimensionality reduction, the\\nexpectation dimensionality reduction rate is 16^n\\nif set -l = n. [2]"
    outfile: "specify the output file name prefix, if not\\nspecify default shuffle named 'default.shuf\\ngenerated'"
    use_default: "All options use default value, which assuming\\nprokaryote genomes, k=8, s=5, and l=2."
    option_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}