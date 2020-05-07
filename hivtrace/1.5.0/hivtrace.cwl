class: CommandLineTool
id: hivtrace.cwl
inputs:
- id: input
  doc: FASTA file
  type: string
  inputBinding:
    prefix: --input
- id: ambiguities
  doc: handle ambiguous nucleotides using the specified strategy
  type: string
  inputBinding:
    prefix: --ambiguities
- id: reference
  doc: reference to align to
  type: string
  inputBinding:
    prefix: --reference
- id: threshold
  doc: Only count edges where the distance is less than this threshold
  type: string
  inputBinding:
    prefix: --threshold
- id: min_overlap
  doc: Minimum Overlap
  type: long
  inputBinding:
    prefix: --minoverlap
- id: fraction
  doc: Fraction
  type: string
  inputBinding:
    prefix: --fraction
- id: curate
  doc: Filter contaminants
  type: string
  inputBinding:
    prefix: --curate
- id: filter
  doc: Edge filtering option
  type: string
  inputBinding:
    prefix: --filter
- id: strip_drams
  doc: "Read in an aligned Fasta file (HIV prot/rt sequences) and remove DRAM (drug\
    \ resistance associated mutation) codon sites. It will output a new alignment\
    \ with these sites removed. It requires input/output file names along with the\
    \ list of DRAM sites to remove: 'lewis' or 'wheeler'."
  type: string
  inputBinding:
    prefix: --strip_drams
- id: compare
  doc: Compare to supplied FASTA file
  type: boolean
  inputBinding:
    prefix: --compare
- id: do_not_store_intermediate
  doc: Store intermediate files
  type: boolean
  inputBinding:
    prefix: --do-not-store-intermediate
- id: skip_alignment
  doc: Skip alignment
  type: boolean
  inputBinding:
    prefix: --skip-alignment
- id: attributes_file
  doc: Annotate with attributes
  type: string
  inputBinding:
    prefix: --attributes-file
- id: log
  doc: Write logs to specified directory
  type: string
  inputBinding:
    prefix: --log
- id: output
  doc: Specify output filename
  type: string
  inputBinding:
    prefix: --output
- id: prior
  doc: Prior network configuration
  type: string
  inputBinding:
    prefix: --prior
outputs: []
cwlVersion: v1.1
baseCommand:
- hivtrace
