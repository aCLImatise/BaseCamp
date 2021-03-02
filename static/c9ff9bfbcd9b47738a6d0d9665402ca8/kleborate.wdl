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
      ~{if defined(kap_tive_o_outfile) then ("--kaptive_o_outfile " +  '"' + kap_tive_o_outfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
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
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_kap_tive_k_outfile = "${in_kap_tive_k_outfile}"
    File out_kap_tive_o_outfile = "${in_kap_tive_o_outfile}"
  }
}