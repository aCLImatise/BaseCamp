version 1.0

task SOAPdenovoTrans127merAll {
  input {
    Boolean? string_configfile_file
    Boolean? string_outputgraph_prefix
    Boolean? optional_output_assembly
    Boolean? optional_output_gap
    Boolean? optional_scaffold_structure
    Boolean? optional_fill_gaps
    Boolean? int_kmermin_size
    Boolean? int_ncpu_number
    Boolean? int_kmerfreqcutoff_kmers
    Boolean? int_edgecovcutoff_edges
    Boolean? int_mergelevelmin_max
    Boolean? int_mincontiglen_shortest
    Boolean? int_locusmaxoutput_output
    Boolean? int_gaplendiff_allowed
  }
  command <<<
    SOAPdenovo-Trans-127mer all \
      ~{true="-s" false="" string_configfile_file} \
      ~{true="-o" false="" string_outputgraph_prefix} \
      ~{true="-R" false="" optional_output_assembly} \
      ~{true="-f" false="" optional_output_gap} \
      ~{true="-S" false="" optional_scaffold_structure} \
      ~{true="-F" false="" optional_fill_gaps} \
      ~{true="-K" false="" int_kmermin_size} \
      ~{true="-p" false="" int_ncpu_number} \
      ~{true="-d" false="" int_kmerfreqcutoff_kmers} \
      ~{true="-e" false="" int_edgecovcutoff_edges} \
      ~{true="-M" false="" int_mergelevelmin_max} \
      ~{true="-L" false="" int_mincontiglen_shortest} \
      ~{true="-t" false="" int_locusmaxoutput_output} \
      ~{true="-G" false="" int_gaplendiff_allowed}
  >>>
  parameter_meta {
    string_configfile_file: "<string>        configFile: the config file of reads"
    string_outputgraph_prefix: "<string>        outputGraph: prefix of output graph file name"
    optional_output_assembly: "(optional)      output assembly RPKM statistics"
    optional_output_gap: "(optional)      output gap related reads for SRkgf to fill gap, [NO]"
    optional_scaffold_structure: "(optional)      scaffold structure exists, [NO]"
    optional_fill_gaps: "(optional)      fill gaps in scaffolds, [NO]"
    int_kmermin_size: "<int>           kmer(min 13, max 127): kmer size, [23]"
    int_ncpu_number: "<int>           n_cpu: number of cpu for use, [8]"
    int_kmerfreqcutoff_kmers: "<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be deleted, [0]"
    int_edgecovcutoff_edges: "<int>           EdgeCovCutoff: edges with coverage no larger than EdgeCovCutoff will be deleted, [2]"
    int_mergelevelmin_max: "<int>           mergeLevel(min 0, max 3): the strength of merging similar sequences during contiging, [1]"
    int_mincontiglen_shortest: "<int>           minContigLen: shortest contig for scaffolding, [100]"
    int_locusmaxoutput_output: "<int>           locusMaxOutput: output the number of transcripts no more than locusMaxOutput in one locus, [5]"
    int_gaplendiff_allowed: "<int>           gapLenDiff: allowed length difference between estimated and filled gap, [50]"
  }
}