class: CommandLineTool
id: hulk_smash.cwl
inputs:
- id: in_algorithm
  doc: tells HULK which sketching algorithm to use [histosketch kmv khf] (default
    "histosketch")
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_banner_matrix
  doc: write a matrix file for banner
  type: boolean?
  inputBinding:
    prefix: --bannerMatrix
- id: in_metric
  doc: tells HULK which distance metric to use [jaccard weightedjaccard] (default
    "jaccard")
  type: string?
  inputBinding:
    prefix: --metric
- id: in_recursive
  doc: recursively search the supplied sketch directory (-d)
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_sketch_dir
  doc: the directory containing the sketches to smash (compare)... (default "./")
  type: Directory?
  inputBinding:
    prefix: --sketchDir
- id: in_km_er_size
  doc: minimizer k-mer length (default 21)
  type: long?
  inputBinding:
    prefix: --kmerSize
- id: in_log
  doc: filename for log file, if omitted then STDOUT used by default
  type: File?
  inputBinding:
    prefix: --log
- id: in_outfile
  doc: directory and basename for saving the outfile(s) (default "./hulk-20200909212823")
  type: Directory?
  inputBinding:
    prefix: --outFile
- id: in_processors
  doc: number of processors to use (default 1)
  type: long?
  inputBinding:
    prefix: --processors
- id: in_profiling
  doc: create the files needed to profile HULK using the go tool pprof
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
- hulk
- smash
