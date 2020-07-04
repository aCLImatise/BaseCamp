class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/SOAPdenovo_Trans_31mer_all.cwl
inputs:
- id: string_configfile_file
  doc: '<string>        configFile: the config file of reads'
  type: boolean
  inputBinding:
    prefix: -s
- id: string_outputgraph_prefix
  doc: '<string>        outputGraph: prefix of output graph file name'
  type: boolean
  inputBinding:
    prefix: -o
- id: optional_output_assembly
  doc: (optional)      output assembly RPKM statistics
  type: boolean
  inputBinding:
    prefix: -R
- id: optional_output_gap
  doc: (optional)      output gap related reads for SRkgf to fill gap, [NO]
  type: boolean
  inputBinding:
    prefix: -f
- id: optional_scaffold_structure
  doc: (optional)      scaffold structure exists, [NO]
  type: boolean
  inputBinding:
    prefix: -S
- id: optional_fill_gaps
  doc: (optional)      fill gaps in scaffolds, [NO]
  type: boolean
  inputBinding:
    prefix: -F
- id: int_kmermin_size
  doc: '<int>           kmer(min 13, max 31): kmer size, [23]'
  type: boolean
  inputBinding:
    prefix: -K
- id: int_ncpu_number
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean
  inputBinding:
    prefix: -p
- id: int_kmerfreqcutoff_kmers
  doc: '<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff
    will be deleted, [0]'
  type: boolean
  inputBinding:
    prefix: -d
- id: int_edgecovcutoff_edges
  doc: '<int>           EdgeCovCutoff: edges with coverage no larger than EdgeCovCutoff
    will be deleted, [2]'
  type: boolean
  inputBinding:
    prefix: -e
- id: int_mergelevelmin_max
  doc: '<int>           mergeLevel(min 0, max 3): the strength of merging similar
    sequences during contiging, [1]'
  type: boolean
  inputBinding:
    prefix: -M
- id: int_mincontiglen_shortest
  doc: '<int>           minContigLen: shortest contig for scaffolding, [100]'
  type: boolean
  inputBinding:
    prefix: -L
- id: int_locusmaxoutput_output
  doc: '<int>           locusMaxOutput: output the number of transcripts no more than
    locusMaxOutput in one locus, [5]'
  type: boolean
  inputBinding:
    prefix: -t
- id: int_gaplendiff_allowed
  doc: '<int>           gapLenDiff: allowed length difference between estimated and
    filled gap, [50]'
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-31mer
- all
