version 1.0

task SOAPdenovoTrans127merMap {
  input {
    Boolean? string_configfile_file
    Boolean? string_inputgraph_prefix
    Boolean? optional_output_gap
    Boolean? optional_output_assembly
    Boolean? int_number_cpu
  }
  command <<<
    SOAPdenovo_Trans_127mer map \
      ~{if (string_configfile_file) then "-s" else ""} \
      ~{if (string_inputgraph_prefix) then "-g" else ""} \
      ~{if (optional_output_gap) then "-f" else ""} \
      ~{if (optional_output_assembly) then "-R" else ""} \
      ~{if (int_number_cpu) then "-p" else ""}
  >>>
  parameter_meta {
    string_configfile_file: "<string>        configFile: the config file of reads"
    string_inputgraph_prefix: "<string>        inputGraph: prefix of input graph file name"
    optional_output_gap: "(optional)      output gap related reads for SRkgf to fill gap, [NO]"
    optional_output_assembly: "(optional)      output assembly RPKM statistics, [NO]"
    int_number_cpu: "<int>           n_cpu: number of cpu for use, [8]"
  }
  output {
    File out_stdout = stdout()
  }
}