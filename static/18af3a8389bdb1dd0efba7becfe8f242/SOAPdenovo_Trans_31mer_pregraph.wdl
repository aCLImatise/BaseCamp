version 1.0

task SOAPdenovoTrans31merPregraph {
  input {
    Boolean? string_configfile_file
    Boolean? string_outputgraph_prefix
    Boolean? int_kmermin_size
    Boolean? int_ncpu_number
    Boolean? int_kmerfreqcutoff_kmers
  }
  command <<<
    SOAPdenovo-Trans-31mer pregraph \
      ~{true="-s" false="" string_configfile_file} \
      ~{true="-o" false="" string_outputgraph_prefix} \
      ~{true="-K" false="" int_kmermin_size} \
      ~{true="-p" false="" int_ncpu_number} \
      ~{true="-d" false="" int_kmerfreqcutoff_kmers}
  >>>
  parameter_meta {
    string_configfile_file: "<string>        configFile: the config file of reads"
    string_outputgraph_prefix: "<string>        outputGraph: prefix of output graph file name"
    int_kmermin_size: "<int>           kmer(min 13, max 31): kmer size, [23]"
    int_ncpu_number: "<int>           n_cpu: number of cpu for use, [8]"
    int_kmerfreqcutoff_kmers: "<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be deleted, [0]"
  }
}