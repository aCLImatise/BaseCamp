version 1.0

task SOAPdenovoTrans127merMap {
  input {
    Boolean? string_configfile_file
    Boolean? string_inputgraph_prefix
    Boolean? optional_output_gap
    Boolean? optional_output_assembly
    Boolean? int_ncpu_number
  }
  command <<<
    SOAPdenovo-Trans-127mer map \
      ~{true="-s" false="" string_configfile_file} \
      ~{true="-g" false="" string_inputgraph_prefix} \
      ~{true="-f" false="" optional_output_gap} \
      ~{true="-R" false="" optional_output_assembly} \
      ~{true="-p" false="" int_ncpu_number}
  >>>
  parameter_meta {
    string_configfile_file: "<string>        configFile: the config file of reads"
    string_inputgraph_prefix: "<string>        inputGraph: prefix of input graph file name"
    optional_output_gap: "(optional)      output gap related reads for SRkgf to fill gap, [NO]"
    optional_output_assembly: "(optional)      output assembly RPKM statistics, [NO]"
    int_ncpu_number: "<int>           n_cpu: number of cpu for use, [8]"
  }
}