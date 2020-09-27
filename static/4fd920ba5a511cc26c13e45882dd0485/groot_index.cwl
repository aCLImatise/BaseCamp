class: CommandLineTool
id: groot_index.cwl
inputs:
- id: in_km_er_size
  doc: size of k-mer (default 31)
  type: long
  inputBinding:
    prefix: --kmerSize
- id: in_max_k
  doc: maxK in the LSH Ensemble (default 4)
  type: long
  inputBinding:
    prefix: --maxK
- id: in_max_sketch_span
  doc: max number of identical neighbouring sketches permitted in any graph traversal
    (default 30)
  type: long
  inputBinding:
    prefix: --maxSketchSpan
- id: in_msa_dir
  doc: directory containing the clustered references (MSA files) - required
  type: Directory
  inputBinding:
    prefix: --msaDir
- id: in_num_part
  doc: number of partitions in the LSH Ensemble (default 8)
  type: long
  inputBinding:
    prefix: --numPart
- id: in_sketch_size
  doc: size of MinHash sketch (default 21)
  type: long
  inputBinding:
    prefix: --sketchSize
- id: in_window_size
  doc: size of window to sketch graph traversals with (default 100)
  type: long
  inputBinding:
    prefix: --windowSize
- id: in_index_dir
  doc: directory for to write/read the GROOT index files
  type: Directory
  inputBinding:
    prefix: --indexDir
- id: in_log
  doc: filename for log file (default "groot.log")
  type: File
  inputBinding:
    prefix: --log
- id: in_processors
  doc: number of processors to use (default 1)
  type: long
  inputBinding:
    prefix: --processors
- id: in_profiling
  doc: create the files needed to profile GROOT using the go tool pprof
  type: boolean
  inputBinding:
    prefix: --profiling
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- groot
- index
