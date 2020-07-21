class: CommandLineTool
id: ../../../fullsimplify.cwl
inputs:
- id: fs
  doc: contained single read reduction read filename(s) (comma separated fasta/fastq)
  type: boolean
  inputBinding:
    prefix: -fs
- id: fp
  doc: contained paired-end read reduction read filename(s) in pairs of 2 (comma separated
    fasta/fastq)
  type: boolean
  inputBinding:
    prefix: -fp
- id: fpi
  doc: contained interleaved paired-end read reduction read filename(s) (comma separated
    fasta/fastq)
  type: boolean
  inputBinding:
    prefix: -fpi
- id: crd
  doc: 'Contained read file (default: none)'
  type: boolean
  inputBinding:
    prefix: -crd
- id: overlapped_graph_filenames
  doc: overlapped edge property graph filename(s) (comma separated edge list)
  type: boolean
  inputBinding:
    prefix: -e
- id: assembly_parameter_file
  doc: 'assembly parameter file (default: parameter.cfg)'
  type: boolean
  inputBinding:
    prefix: -p
- id: output_filename_prefix
  doc: all output filename prefix
  type: boolean
  inputBinding:
    prefix: -o
- id: simp_th
  doc: path to partial simplification executable
  type: boolean
  inputBinding:
    prefix: -simPth
- id: h_slash_help
  doc: only print out the help contents
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: ovl
  doc: 'minimum overlap length (default: 0, use all overlap found in edge property
    graph files)'
  type: boolean
  inputBinding:
    prefix: -ovl
- id: log
  doc: 'verbosity level of log messages: ERROR, WARNING, INFO (default: INFO)'
  type: boolean
  inputBinding:
    prefix: -log
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fullsimplify
