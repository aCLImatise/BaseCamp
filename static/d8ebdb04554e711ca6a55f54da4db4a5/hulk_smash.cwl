class: CommandLineTool
id: hulk_smash.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: algorithm
  doc: tells HULK which sketching algorithm to use [histosketch kmv khf] (default
    "histosketch")
  type: string
  inputBinding:
    prefix: --algorithm
- id: banner_matrix
  doc: write a matrix file for banner
  type: boolean
  inputBinding:
    prefix: --bannerMatrix
- id: metric
  doc: tells HULK which distance metric to use [jaccard weightedjaccard] (default
    "jaccard")
  type: string
  inputBinding:
    prefix: --metric
- id: recursive
  doc: recursively search the supplied sketch directory (-d)
  type: boolean
  inputBinding:
    prefix: --recursive
- id: sketch_dir
  doc: the directory containing the sketches to smash (compare)... (default "./")
  type: string
  inputBinding:
    prefix: --sketchDir
- id: km_er_size
  doc: minimizer k-mer length (default 21)
  type: string
  inputBinding:
    prefix: --kmerSize
- id: log
  doc: filename for log file, if omitted then STDOUT used by default
  type: string
  inputBinding:
    prefix: --log
- id: outfile
  doc: directory and basename for saving the outfile(s) (default "./hulk-20200428124331")
  type: string
  inputBinding:
    prefix: --outFile
- id: processors
  doc: number of processors to use (default 1)
  type: long
  inputBinding:
    prefix: --processors
- id: profiling
  doc: create the files needed to profile HULK using the go tool pprof
  type: boolean
  inputBinding:
    prefix: --profiling
outputs: []
cwlVersion: v1.1
baseCommand:
- hulk
- smash
