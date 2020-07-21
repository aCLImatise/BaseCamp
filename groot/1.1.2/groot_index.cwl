class: CommandLineTool
id: ../../../groot_index.cwl
inputs:
- id: km_er_size
  doc: size of k-mer (default 31)
  type: long
  inputBinding:
    prefix: --kmerSize
- id: max_k
  doc: maxK in the LSH Ensemble (default 4)
  type: long
  inputBinding:
    prefix: --maxK
- id: max_sketch_span
  doc: max number of identical neighbouring sketches permitted in any graph traversal
    (default 30)
  type: long
  inputBinding:
    prefix: --maxSketchSpan
- id: msa_dir
  doc: directory containing the clustered references (MSA files) - required
  type: string
  inputBinding:
    prefix: --msaDir
- id: num_part
  doc: number of partitions in the LSH Ensemble (default 8)
  type: long
  inputBinding:
    prefix: --numPart
- id: sketch_size
  doc: size of MinHash sketch (default 21)
  type: long
  inputBinding:
    prefix: --sketchSize
- id: window_size
  doc: size of window to sketch graph traversals with (default 100)
  type: long
  inputBinding:
    prefix: --windowSize
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
- index
