class: CommandLineTool
id: ../../../groot_align.cwl
inputs:
- id: cont_thresh
  doc: containment threshold for the LSH ensemble (default 0.99)
  type: double
  inputBinding:
    prefix: --contThresh
- id: fast_a
  doc: if set, the input will be treated as fasta sequence(s) (experimental feature)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: fast_q
  doc: FASTQ file(s) to align
  type: string
  inputBinding:
    prefix: --fastq
- id: graph_dir
  doc: directory to save variation graphs to (default "./groot-graphs-20200623143644")
  type: string
  inputBinding:
    prefix: --graphDir
- id: mink_merco_v
  doc: minimum number of k-mers covering each base of a graph segment (default 1)
  type: double
  inputBinding:
    prefix: --minKmerCov
- id: no_align
  doc: if set, no exact alignment will be performed - graphs will be weighted using
    approximate read mappings
  type: boolean
  inputBinding:
    prefix: --noAlign
- id: index_dir
  doc: directory for to write/read the GROOT index files
  type: string
  inputBinding:
    prefix: --indexDir
- id: log
  doc: filename for log file (default "groot.log")
  type: string
  inputBinding:
    prefix: --log
- id: processors
  doc: number of processors to use (default 1)
  type: long
  inputBinding:
    prefix: --processors
- id: profiling
  doc: create the files needed to profile GROOT using the go tool pprof
  type: boolean
  inputBinding:
    prefix: --profiling
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- groot
- align
