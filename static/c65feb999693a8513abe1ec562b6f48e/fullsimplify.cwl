class: CommandLineTool
id: fullsimplify.cwl
inputs:
- id: in_fs
  doc: contained single read reduction read filename(s) (comma separated fasta/fastq)
  type: boolean
  inputBinding:
    prefix: -fs
- id: in_fp
  doc: contained paired-end read reduction read filename(s) in pairs of 2 (comma separated
    fasta/fastq)
  type: boolean
  inputBinding:
    prefix: -fp
- id: in_fpi
  doc: contained interleaved paired-end read reduction read filename(s) (comma separated
    fasta/fastq)
  type: boolean
  inputBinding:
    prefix: -fpi
- id: in_crd
  doc: 'Contained read file (default: none)'
  type: boolean
  inputBinding:
    prefix: -crd
- id: in_overlapped_edge_property
  doc: overlapped edge property graph filename(s) (comma separated edge list)
  type: boolean
  inputBinding:
    prefix: -e
- id: in_assembly_parameter_file
  doc: 'assembly parameter file (default: parameter.cfg)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_output_filename_prefix
  doc: all output filename prefix
  type: File
  inputBinding:
    prefix: -o
- id: in_simp_th
  doc: path to partial simplification executable
  type: boolean
  inputBinding:
    prefix: -simPth
- id: in_h_slash_help
  doc: only print out the help contents
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_ovl
  doc: 'minimum overlap length (default: 0, use all overlap found in edge property
    graph files)'
  type: boolean
  inputBinding:
    prefix: -ovl
- id: in_log
  doc: 'verbosity level of log messages: ERROR, WARNING, INFO (default: INFO)'
  type: boolean
  inputBinding:
    prefix: -log
- id: in_param
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_prefix
  doc: all output filename prefix
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename_prefix)
cwlVersion: v1.1
baseCommand:
- fullsimplify
