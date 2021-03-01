version 1.0

task SOAPdenovo127merMap {
  input {
    File? config_file_solexa
    File? prefix_input_graph
    Boolean? optional_output_gap
    Int? ncpu_number_cpu
    Int? max_kmer_size
    String map_s_g
  }
  command <<<
    SOAPdenovo_127mer map \
      ~{map_s_g} \
      ~{if defined(config_file_solexa) then ("-s " +  '"' + config_file_solexa + '"') else ""} \
      ~{if defined(prefix_input_graph) then ("-g " +  '"' + prefix_input_graph + '"') else ""} \
      ~{if (optional_output_gap) then "-f" else ""} \
      ~{if defined(ncpu_number_cpu) then ("-p " +  '"' + ncpu_number_cpu + '"') else ""} \
      ~{if defined(max_kmer_size) then ("-k " +  '"' + max_kmer_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_file_solexa: "configFile: the config file of solexa reads"
    prefix_input_graph: "inputGraph: prefix of input graph file names"
    optional_output_gap: "(optional)      output gap related reads in map step for using SRkgf to fill gap, [NO]"
    ncpu_number_cpu: "n_cpu: number of cpu for use, [8]"
    max_kmer_size: "kmer_R2C(min 13, max 127): kmer size used for mapping read to contig, [K]"
    map_s_g: "map -s configFile -g inputGraph [-f] [-p n_cpu -k kmer_R2C]"
  }
  output {
    File out_stdout = stdout()
  }
}