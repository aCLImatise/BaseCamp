version 1.0

task SOAPdenovo127merMap {
  input {
    File? configfile_config_file
    File? inputgraph_prefix_input
    Boolean? optional_output_gap
    Int? number_cpu_use
    Int? kmerrcmin_max_kmer
    String map_s_configfile
  }
  command <<<
    SOAPdenovo_127mer map \
      ~{map_s_configfile} \
      ~{if defined(configfile_config_file) then ("-s " +  '"' + configfile_config_file + '"') else ""} \
      ~{if defined(inputgraph_prefix_input) then ("-g " +  '"' + inputgraph_prefix_input + '"') else ""} \
      ~{if (optional_output_gap) then "-f" else ""} \
      ~{if defined(number_cpu_use) then ("-p " +  '"' + number_cpu_use + '"') else ""} \
      ~{if defined(kmerrcmin_max_kmer) then ("-k " +  '"' + kmerrcmin_max_kmer + '"') else ""}
  >>>
  parameter_meta {
    configfile_config_file: "configFile: the config file of solexa reads"
    inputgraph_prefix_input: "inputGraph: prefix of input graph file names"
    optional_output_gap: "(optional)      output gap related reads in map step for using SRkgf to fill gap, [NO]"
    number_cpu_use: "n_cpu: number of cpu for use, [8]"
    kmerrcmin_max_kmer: "kmer_R2C(min 13, max 127): kmer size used for mapping read to contig, [K]"
    map_s_configfile: "map -s configFile -g inputGraph [-f] [-p n_cpu -k kmer_R2C]"
  }
  output {
    File out_stdout = stdout()
  }
}