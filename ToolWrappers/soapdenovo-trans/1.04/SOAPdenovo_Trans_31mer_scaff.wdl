version 1.0

task SOAPdenovoTrans31merScaff {
  input {
    Boolean? string_inputgraph_prefix
    Boolean? optional_output_assembly
    Boolean? optional_scaffold_structure
    Boolean? optional_fill_gaps
    Boolean? int_ncpu_number
    Boolean? int_mincontiglen_shortest
    Boolean? int_locusmaxoutput_output
    Boolean? int_gaplendiff_allowed
  }
  command <<<
    SOAPdenovo_Trans_31mer scaff \
      ~{if (string_inputgraph_prefix) then "-g" else ""} \
      ~{if (optional_output_assembly) then "-R" else ""} \
      ~{if (optional_scaffold_structure) then "-S" else ""} \
      ~{if (optional_fill_gaps) then "-F" else ""} \
      ~{if (int_ncpu_number) then "-p" else ""} \
      ~{if (int_mincontiglen_shortest) then "-L" else ""} \
      ~{if (int_locusmaxoutput_output) then "-t" else ""} \
      ~{if (int_gaplendiff_allowed) then "-G" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_inputgraph_prefix: "<string>        inputGraph: prefix of input graph file name"
    optional_output_assembly: "(optional) output assembly RPKM statistics, [NO]"
    optional_scaffold_structure: "(optional)      scaffold structure exists, [NO]"
    optional_fill_gaps: "(optional)      fill gaps in scaffolds, [NO]"
    int_ncpu_number: "<int>           n_cpu: number of cpu for use, [8]"
    int_mincontiglen_shortest: "<int>           minContigLen: shortest contig for scaffolding, [100]"
    int_locusmaxoutput_output: "<int>           locusMaxOutput: output the number of transcripts no more than locusMaxOutput in one locus, [5]"
    int_gaplendiff_allowed: "<int>           gapLenDiff: allowed length difference between estimated and filled gap, [50]"
  }
  output {
    File out_stdout = stdout()
  }
}