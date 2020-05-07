class: CommandLineTool
id: vcfcheck.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_reference
  doc: FASTA reference file to use to obtain primer sequences
  type: boolean
  inputBinding:
    prefix: --fasta-reference
- id: exclude_failures
  doc: a record fails, don't print it.  Otherwise do.
  type: string
  inputBinding:
    prefix: --exclude-failures
- id: keep_failures
  doc: Print if the record fails, otherwise not.
  type: boolean
  inputBinding:
    prefix: --keep-failures
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfcheck
