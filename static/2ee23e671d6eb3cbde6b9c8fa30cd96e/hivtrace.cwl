class: CommandLineTool
id: hivtrace.cwl
inputs:
- id: in_input
  doc: FASTA file
  type: File?
  inputBinding:
    prefix: --input
- id: in_ambiguities
  doc: "handle ambiguous nucleotides using the specified\nstrategy"
  type: string?
  inputBinding:
    prefix: --ambiguities
- id: in_reference
  doc: reference to align to
  type: string?
  inputBinding:
    prefix: --reference
- id: in_threshold
  doc: "Only count edges where the distance is less than this\nthreshold"
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_min_overlap
  doc: Minimum Overlap
  type: long?
  inputBinding:
    prefix: --minoverlap
- id: in_filter
  doc: Edge filtering option
  type: string?
  inputBinding:
    prefix: --filter
- id: in_strip_drams
  doc: "Read in an aligned Fasta file (HIV prot/rt sequences)\nand remove DRAM (drug\
    \ resistance associated mutation)\ncodon sites. It will output a new alignment\
    \ with these\nsites removed. It requires input/output file names\nalong with the\
    \ list of DRAM sites to remove: 'lewis'\nor 'wheeler'."
  type: File?
  inputBinding:
    prefix: --strip_drams
- id: in_compare
  doc: Compare to supplied FASTA file
  type: boolean?
  inputBinding:
    prefix: --compare
- id: in_do_not_store_intermediate
  doc: Store intermediate files
  type: boolean?
  inputBinding:
    prefix: --do-not-store-intermediate
- id: in_skip_alignment
  doc: Skip alignment
  type: boolean?
  inputBinding:
    prefix: --skip-alignment
- id: in_attributes_file
  doc: Annotate with attributes
  type: File?
  inputBinding:
    prefix: --attributes-file
- id: in_log
  doc: Write logs to specified directory
  type: Directory?
  inputBinding:
    prefix: --log
- id: in_output
  doc: Specify output filename
  type: File?
  inputBinding:
    prefix: --output
- id: in_prior
  doc: "Prior network configuration\n"
  type: string?
  inputBinding:
    prefix: --prior
- id: in_fraction
  doc: -u CURATE, --curate CURATE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Specify output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- hivtrace
