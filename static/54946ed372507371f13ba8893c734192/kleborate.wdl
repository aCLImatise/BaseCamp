version 1.0

task Kleborate {
  input {
    Array[String] assemblies
    Boolean? resistance
    Boolean? kap_tive_k
    Boolean? kap_tive_o
    Boolean? kap_tive
    Boolean? all
    String? outfile
    String? kap_tive_k_outfile
    String? kap_tive_o_outfile
  }
  command <<<
    kleborate \
      ~{if defined(assemblies) then ("--assemblies " +  '"' + assemblies + '"') else ""} \
      ~{true="--resistance" false="" resistance} \
      ~{true="--kaptive_k" false="" kap_tive_k} \
      ~{true="--kaptive_o" false="" kap_tive_o} \
      ~{true="--kaptive" false="" kap_tive} \
      ~{true="--all" false="" all} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(kap_tive_k_outfile) then ("--kaptive_k_outfile " +  '"' + kap_tive_k_outfile + '"') else ""} \
      ~{if defined(kap_tive_o_outfile) then ("--kaptive_o_outfile " +  '"' + kap_tive_o_outfile + '"') else ""}
  >>>
  parameter_meta {
    assemblies: "FASTA file(s) for assemblies"
    resistance: "Turn on resistance genes screening (default: no resistance gene screening)"
    kap_tive_k: "Turn on Kaptive screening of K loci (default: do not run Kaptive for K loci)"
    kap_tive_o: "Turn on Kaptive screening of O loci (default: do not run Kaptive for O loci)"
    kap_tive: "Equivalent to --kaptive_k --kaptive_o"
    all: "Equivalent to --resistance --kaptive"
    outfile: "File for detailed output (default: Kleborate_results.txt)"
    kap_tive_k_outfile: "File for full Kaptive K locus output (default: do not save Kaptive K locus results to separate file)"
    kap_tive_o_outfile: "File for full Kaptive O locus output (default: do not save Kaptive O locus results to separate file)"
  }
}