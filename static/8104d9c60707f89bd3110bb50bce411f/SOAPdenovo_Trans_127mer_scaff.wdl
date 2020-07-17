version 1.0

task SOAPdenovoTrans127merScaff {
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
    SOAPdenovo-Trans-127mer scaff \
      ~{true="-g" false="" string_inputgraph_prefix} \
      ~{true="-R" false="" optional_output_assembly} \
      ~{true="-S" false="" optional_scaffold_structure} \
      ~{true="-F" false="" optional_fill_gaps} \
      ~{true="-p" false="" int_ncpu_number} \
      ~{true="-L" false="" int_mincontiglen_shortest} \
      ~{true="-t" false="" int_locusmaxoutput_output} \
      ~{true="-G" false="" int_gaplendiff_allowed}
  >>>
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
}