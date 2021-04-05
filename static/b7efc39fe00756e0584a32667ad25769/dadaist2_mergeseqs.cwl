class: CommandLineTool
id: dadaist2_mergeseqs.cwl
inputs:
- id: in_input_file
  doc: FASTA or FASTQ file
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_fast_a
  doc: Write new sequences to FASTA
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_pair_spacer
  doc: 'Pairs separator [default: NNNNNNNNNN]'
  type: string?
  inputBinding:
    prefix: --pair-spacer
- id: in_strip
  doc: Remove this string from sample names
  type: string?
  inputBinding:
    prefix: --strip
- id: in_seq_name
  doc: 'Sequence string name [default: MD5]'
  type: string?
  inputBinding:
    prefix: --seq-name
- id: in_max_mismatches
  doc: 'Maximum allowed mismatches [default: 0]'
  type: long?
  inputBinding:
    prefix: --max-mismatches
- id: in_id
  doc: 'Features column name [default: #OTU ID]'
  type: string?
  inputBinding:
    prefix: --id
- id: in_print_verbose_output
  doc: Print verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_features
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_column
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_11
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqfu:0.8.13--hed695b0_0
cwlVersion: v1.1
baseCommand:
- dadaist2-mergeseqs
