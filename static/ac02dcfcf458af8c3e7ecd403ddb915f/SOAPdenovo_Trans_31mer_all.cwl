class: CommandLineTool
id: SOAPdenovo_Trans_31mer_all.cwl
inputs:
- id: in_string_configfile_file
  doc: '<string>        configFile: the config file of reads'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_string_outputgraph_prefix
  doc: '<string>        outputGraph: prefix of output graph file name'
  type: File?
  inputBinding:
    prefix: -o
- id: in_optional_output_assembly
  doc: (optional)      output assembly RPKM statistics
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_optional_output_gap
  doc: (optional)      output gap related reads for SRkgf to fill gap, [NO]
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_optional_scaffold_structure
  doc: (optional)      scaffold structure exists, [NO]
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_optional_fill_gaps
  doc: (optional)      fill gaps in scaffolds, [NO]
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_int_kmermin_max
  doc: '<int>           kmer(min 13, max 31): kmer size, [23]'
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_int_ncpu_number
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_int_kmerfreqcutoff_kmers
  doc: '<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff
    will be deleted, [0]'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_int_edgecovcutoff_edges
  doc: '<int>           EdgeCovCutoff: edges with coverage no larger than EdgeCovCutoff
    will be deleted, [2]'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_int_mergelevelmin_max
  doc: '<int>           mergeLevel(min 0, max 3): the strength of merging similar
    sequences during contiging, [1]'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_int_mincontiglen_shortest
  doc: '<int>           minContigLen: shortest contig for scaffolding, [100]'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_int_locusmaxoutput_output
  doc: '<int>           locusMaxOutput: output the number of transcripts no more than
    locusMaxOutput in one locus, [5]'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_int_gaplendiff_allowed
  doc: '<int>           gapLenDiff: allowed length difference between estimated and
    filled gap, [50]'
  type: boolean?
  inputBinding:
    prefix: -G
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_outputgraph_prefix
  doc: '<string>        outputGraph: prefix of output graph file name'
  type: File?
  outputBinding:
    glob: $(inputs.in_string_outputgraph_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-31mer
- all
