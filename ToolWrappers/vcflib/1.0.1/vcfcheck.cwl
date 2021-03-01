class: CommandLineTool
id: vcfcheck.cwl
inputs:
- id: in_fast_a_reference
  doc: FASTA reference file to use to obtain primer sequences
  type: boolean?
  inputBinding:
    prefix: --fasta-reference
- id: in_exclude_failures
  doc: a record fails, don't print it.  Otherwise do.
  type: string?
  inputBinding:
    prefix: --exclude-failures
- id: in_keep_failures
  doc: Print if the record fails, otherwise not.
  type: boolean?
  inputBinding:
    prefix: --keep-failures
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1
cwlVersion: v1.1
baseCommand:
- vcfcheck
