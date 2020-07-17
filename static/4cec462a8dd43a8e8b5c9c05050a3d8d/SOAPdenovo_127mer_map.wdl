version 1.0

task SOAPdenovo127merMap {
  input {
    String? configfile_config_file
    String? inputgraph_prefix_input
    Boolean? optional_output_gap
    Int? ncpu_number_cpu
    Int? kmerrcmin_max_kmer
  }
  command <<<
    SOAPdenovo-127mer map \
      ~{if defined(configfile_config_file) then ("-s " +  '"' + configfile_config_file + '"') else ""} \
      ~{if defined(inputgraph_prefix_input) then ("-g " +  '"' + inputgraph_prefix_input + '"') else ""} \
      ~{true="-f" false="" optional_output_gap} \
      ~{if defined(ncpu_number_cpu) then ("-p " +  '"' + ncpu_number_cpu + '"') else ""} \
      ~{if defined(kmerrcmin_max_kmer) then ("-k " +  '"' + kmerrcmin_max_kmer + '"') else ""}
  >>>
  parameter_meta {
    configfile_config_file: "configFile: the config file of solexa reads"
    inputgraph_prefix_input: "inputGraph: prefix of input graph file names"
    optional_output_gap: "(optional)      output gap related reads in map step for using SRkgf to fill gap, [NO]"
    ncpu_number_cpu: "n_cpu: number of cpu for use, [8]"
    kmerrcmin_max_kmer: "kmer_R2C(min 13, max 127): kmer size used for mapping read to contig, [K]"
  }
}