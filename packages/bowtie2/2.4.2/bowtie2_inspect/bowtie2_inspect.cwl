class: CommandLineTool
id: bowtie2_inspect.cwl
inputs:
- id: in_large_index
  doc: "force inspection of the 'large' index, even if a\n'small' one is present."
  type: boolean?
  inputBinding:
    prefix: --large-index
- id: in_debug
  doc: use the debug binary; slower, assertions enabled
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_sanitized
  doc: use sanitized binary; slower, uses ASan and/or UBSan
  type: boolean?
  inputBinding:
    prefix: --sanitized
- id: in_verbose
  doc: Verbose output (for debugging)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long?
  inputBinding:
    prefix: --across
- id: in_names
  doc: Print reference sequence names only
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean?
  inputBinding:
    prefix: --summary
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bowtie2:2.4.2--py38h1c8e9b9_1
cwlVersion: v1.1
baseCommand:
- bowtie2-inspect
