class: CommandLineTool
id: SOAPdenovo_Trans_127mer_all.cwl
inputs:
- id: s
  doc: '<string>        configFile: the config file of reads'
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: '<string>        outputGraph: prefix of output graph file name'
  type: boolean
  inputBinding:
    prefix: -o
- id: r
  doc: (optional)      output assembly RPKM statistics
  type: boolean
  inputBinding:
    prefix: -R
- id: f
  doc: (optional)      output gap related reads for SRkgf to fill gap, [NO]
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: (optional)      scaffold structure exists, [NO]
  type: boolean
  inputBinding:
    prefix: -S
- id: f
  doc: (optional)      fill gaps in scaffolds, [NO]
  type: boolean
  inputBinding:
    prefix: -F
- id: k
  doc: '<int>           kmer(min 13, max 127): kmer size, [23]'
  type: boolean
  inputBinding:
    prefix: -K
- id: p
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean
  inputBinding:
    prefix: -p
- id: d
  doc: '<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff
    will be deleted, [0]'
  type: boolean
  inputBinding:
    prefix: -d
- id: e
  doc: '<int>           EdgeCovCutoff: edges with coverage no larger than EdgeCovCutoff
    will be deleted, [2]'
  type: boolean
  inputBinding:
    prefix: -e
- id: m
  doc: '<int>           mergeLevel(min 0, max 3): the strength of merging similar
    sequences during contiging, [1]'
  type: boolean
  inputBinding:
    prefix: -M
- id: l
  doc: '<int>           minContigLen: shortest contig for scaffolding, [100]'
  type: boolean
  inputBinding:
    prefix: -L
- id: t
  doc: '<int>           locusMaxOutput: output the number of transcripts no more than
    locusMaxOutput in one locus, [5]'
  type: boolean
  inputBinding:
    prefix: -t
- id: g
  doc: '<int>           gapLenDiff: allowed length difference between estimated and
    filled gap, [50]'
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-127mer
- all
