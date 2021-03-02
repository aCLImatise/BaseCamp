class: CommandLineTool
id: RNAplot.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_jobs
  doc: "[=number]           Split batch input into jobs and start\nprocessing in parallel\
    \ using multiple\nthreads.  (default=`0')"
  type: boolean?
  inputBinding:
    prefix: --jobs
- id: in_in_file
  doc: Read a file instead of reading from stdin.
  type: File?
  inputBinding:
    prefix: --infile
- id: in_msa
  doc: "Input is multiple sequence alignment in\nStockholm 1.0 format.  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --msa
- id: in_mis
  doc: "Output \"most informative sequence\" instead of\nsimple consensus  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --mis
- id: in_co_var
  doc: Annotate covariance of base pairs in consensus
  type: boolean?
  inputBinding:
    prefix: --covar
- id: in_aln
  doc: "Produce a colored and structure annotated\nalignment in PostScript format\
    \ in the file\n\"aln.ps\" in the current directory.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --aln
- id: in_layout_type
  doc: "Choose the plotting layout algorithm.\n(default=`1')"
  type: long?
  inputBinding:
    prefix: --layout-type
- id: in_pre
  doc: "Add annotation macros to postscript file, and\nadd the postscript code in\
    \ \"string\" just\nbefore the code to draw the structure. This\nis an easy way\
    \ to add annotation."
  type: File?
  inputBinding:
    prefix: --pre
- id: in_post
  doc: "Same as --pre but in contrast to adding the\nannotation macros. E.g to mark\
    \ position 15\nwith circle use --post \"15 cmark\"."
  type: long?
  inputBinding:
    prefix: --post
- id: in_auto_id
  doc: "Automatically generate an ID for each sequence.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --auto-id
- id: in_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names).  (default=`sequence')"
  type: File?
  inputBinding:
    prefix: --id-prefix
- id: in_structure_dot
  doc: (default=off)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_id_prefix
  doc: "Prefix for automatically generated IDs (as used\nin output file names).  (default=`sequence')"
  type: File?
  outputBinding:
    glob: $(inputs.in_id_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- RNAplot
