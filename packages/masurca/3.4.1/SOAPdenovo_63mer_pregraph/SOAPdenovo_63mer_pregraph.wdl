version 1.0

task SOAPdenovo63merPregraph {
  input {
    File? configfile_config_file
    File? outputgraph_prefix_output
    Int? kmermin_max_kmer
    Int? number_cpu_use
    Int? initmemoryassumption_memory_assumption
    Boolean? optional_output_information
    Int? kmerfreqcutoff_kmers_larger
    String pre_graph
  }
  command <<<
    SOAPdenovo_63mer pregraph \
      ~{pre_graph} \
      ~{if defined(configfile_config_file) then ("-s " +  '"' + configfile_config_file + '"') else ""} \
      ~{if defined(outputgraph_prefix_output) then ("-o " +  '"' + outputgraph_prefix_output + '"') else ""} \
      ~{if defined(kmermin_max_kmer) then ("-K " +  '"' + kmermin_max_kmer + '"') else ""} \
      ~{if defined(number_cpu_use) then ("-p " +  '"' + number_cpu_use + '"') else ""} \
      ~{if defined(initmemoryassumption_memory_assumption) then ("-a " +  '"' + initmemoryassumption_memory_assumption + '"') else ""} \
      ~{if (optional_output_information) then "-R" else ""} \
      ~{if defined(kmerfreqcutoff_kmers_larger) then ("-d " +  '"' + kmerfreqcutoff_kmers_larger + '"') else ""}
  >>>
  parameter_meta {
    configfile_config_file: "configFile: the config file of solexa reads"
    outputgraph_prefix_output: "outputGraph: prefix of output graph file name"
    kmermin_max_kmer: "kmer(min 13, max 63): kmer size, [23]"
    number_cpu_use: "n_cpu: number of cpu for use, [8]"
    initmemoryassumption_memory_assumption: "initMemoryAssumption: memory assumption initialized to avoid further reallocation, unit GB, [0]"
    optional_output_information: "(optional)    output extra information for resolving repeats in contig step, [NO]"
    kmerfreqcutoff_kmers_larger: "KmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be deleted, [0]"
    pre_graph: "pregraph -s configFile -o outputGraph [-R] [-K kmer -p n_cpu -a initMemoryAssumption -d KmerFreqCutoff]"
  }
  output {
    File out_stdout = stdout()
    File out_outputgraph_prefix_output = "${in_outputgraph_prefix_output}"
  }
}