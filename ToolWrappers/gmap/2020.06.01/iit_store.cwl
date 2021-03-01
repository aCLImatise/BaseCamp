class: CommandLineTool
id: iit_store.cwl
inputs:
- id: in_output
  doc: Name of output iit file
  type: File?
  inputBinding:
    prefix: --output
- id: in_old_format
  doc: "Old format for intervals:\n<start> <optional end> <optional div> <optional\
    \ type>"
  type: boolean?
  inputBinding:
    prefix: --oldformat
- id: in_accession_only
  doc: Process only the first word of each FASTA header, and ignore the rest of the
    line
  type: boolean?
  inputBinding:
    prefix: --accession-only
- id: in_fields
  doc: Annotation consists of separate fields
  type: boolean?
  inputBinding:
    prefix: --fields
- id: in_gff
  doc: Parse input file in gff3 format
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_label
  doc: For gff input, the feature attribute to use (default is ID)
  type: string?
  inputBinding:
    prefix: --label
- id: in_sort
  doc: "Sorting of divisions: none, alpha, numeric-alpha, or chrom (default)\nnumeric-alpha:\
    \ chr1 chr1_random chr2 chr10 chr10_random chrM chrUn chrX chrY\nchrom: chr1 chr2\
    \ chr10 chrX chrY chrM chr1_random chr10_random chrUn\nNote 1: For sorting purposes,\
    \ any initial 'chr' will be ignored\nNote 2: For chrom, X, Y, M, MT (or chrX,\
    \ chrY, and so on) are special"
  type: long?
  inputBinding:
    prefix: --sort
- id: in_i_it_version
  doc: "Desired iit version for output iit\n(default = 0, which means latest version)"
  type: long?
  inputBinding:
    prefix: --iitversion
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Name of output iit file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- iit_store
