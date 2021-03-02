class: CommandLineTool
id: groot_align.cwl
inputs:
- id: in_cont_thresh
  doc: containment threshold for the LSH ensemble (default 0.99)
  type: double?
  inputBinding:
    prefix: --contThresh
- id: in_fast_a
  doc: if set, the input will be treated as fasta sequence(s) (experimental feature)
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_fast_q
  doc: FASTQ file(s) to align
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_graph_dir
  doc: directory to save variation graphs to (default "./groot-graphs-20200909213621")
  type: Directory?
  inputBinding:
    prefix: --graphDir
- id: in_mink_merco_v
  doc: minimum number of k-mers covering each base of a graph segment (default 1)
  type: double?
  inputBinding:
    prefix: --minKmerCov
- id: in_no_align
  doc: if set, no exact alignment will be performed - graphs will be weighted using
    approximate read mappings
  type: boolean?
  inputBinding:
    prefix: --noAlign
- id: in_index_dir
  doc: directory for to write/read the GROOT index files
  type: Directory?
  inputBinding:
    prefix: --indexDir
- id: in_log
  doc: filename for log file (default "groot.log")
  type: File?
  inputBinding:
    prefix: --log
- id: in_processors
  doc: number of processors to use (default 1)
  type: long?
  inputBinding:
    prefix: --processors
- id: in_profiling
  doc: create the files needed to profile GROOT using the go tool pprof
  type: boolean?
  inputBinding:
    prefix: --profiling
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- groot
- align
