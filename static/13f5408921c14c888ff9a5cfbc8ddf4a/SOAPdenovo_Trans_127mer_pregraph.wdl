version 1.0

task SOAPdenovoTrans127merPregraph {
  input {
    Boolean? string_configfile_file
    File? string_outputgraph_prefix
    Boolean? int_kmermin_max
    Boolean? int_ncpu_number
    Boolean? int_kmerfreqcutoff_kmers
  }
  command <<<
    SOAPdenovo_Trans_127mer pregraph \
      ~{if (string_configfile_file) then "-s" else ""} \
      ~{if (string_outputgraph_prefix) then "-o" else ""} \
      ~{if (int_kmermin_max) then "-K" else ""} \
      ~{if (int_ncpu_number) then "-p" else ""} \
      ~{if (int_kmerfreqcutoff_kmers) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_configfile_file: "<string>        configFile: the config file of reads"
    string_outputgraph_prefix: "<string>        outputGraph: prefix of output graph file name"
    int_kmermin_max: "<int>           kmer(min 13, max 127): kmer size, [23]"
    int_ncpu_number: "<int>           n_cpu: number of cpu for use, [8]"
    int_kmerfreqcutoff_kmers: "<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be deleted, [0]"
  }
  output {
    File out_stdout = stdout()
    File out_string_outputgraph_prefix = "${in_string_outputgraph_prefix}"
  }
}