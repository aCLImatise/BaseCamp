version 1.0

task Kleborate {
  input {
    Array[String] assemblies
    Boolean? resistance
    Boolean? kap_tive_k
    Boolean? kap_tive_o
    Boolean? kap_tive
    Boolean? all
    File? outfile
    File? kap_tive_k_outfile
    File? kap_tive_o_outfile
    Int? min_identity
    Int? min_coverage
    Int? min_spurious_identity
    Int? min_spurious_coverage
    Boolean? force_index
  }
  command <<<
    kleborate \
      ~{if defined(assemblies) then ("--assemblies " +  '"' + assemblies + '"') else ""} \
      ~{if (resistance) then "--resistance" else ""} \
      ~{if (kap_tive_k) then "--kaptive_k" else ""} \
      ~{if (kap_tive_o) then "--kaptive_o" else ""} \
      ~{if (kap_tive) then "--kaptive" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(kap_tive_k_outfile) then ("--kaptive_k_outfile " +  '"' + kap_tive_k_outfile + '"') else ""} \
      ~{if defined(kap_tive_o_outfile) then ("--kaptive_o_outfile " +  '"' + kap_tive_o_outfile + '"') else ""} \
      ~{if defined(min_identity) then ("--min_identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(min_spurious_identity) then ("--min_spurious_identity " +  '"' + min_spurious_identity + '"') else ""} \
      ~{if defined(min_spurious_coverage) then ("--min_spurious_coverage " +  '"' + min_spurious_coverage + '"') else ""} \
      ~{if (force_index) then "--force_index" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/kleborate:2.0.1--py_1"
  }
  parameter_meta {
    assemblies: "FASTA file(s) for assemblies"
    resistance: "Turn on resistance genes screening (default: no\\nresistance gene screening)"
    kap_tive_k: "Turn on Kaptive screening of K loci (default: do not\\nrun Kaptive for K loci)"
    kap_tive_o: "Turn on Kaptive screening of O loci (default: do not\\nrun Kaptive for O loci)"
    kap_tive: "Equivalent to --kaptive_k --kaptive_o"
    all: "Equivalent to --resistance --kaptive"
    outfile: "File for detailed output (default:\\nKleborate_results.txt)"
    kap_tive_k_outfile: "File for full Kaptive K locus output (default: do not\\nsave Kaptive K locus results to separate file)"
    kap_tive_o_outfile: "File for full Kaptive O locus output (default: do not\\nsave Kaptive O locus results to separate file)"
    min_identity: "Minimum alignment identity for main results"
    min_coverage: "Minimum alignment coverage for main results"
    min_spurious_identity: "Minimum alignment identity for spurious results"
    min_spurious_coverage: "Minimum alignment coverage for spurious results"
    force_index: "Rebuild the BLAST index at the start of execution"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_kap_tive_k_outfile = "${in_kap_tive_k_outfile}"
    File out_kap_tive_o_outfile = "${in_kap_tive_o_outfile}"
  }
}