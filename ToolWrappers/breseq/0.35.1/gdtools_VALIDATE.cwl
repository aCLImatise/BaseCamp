class: CommandLineTool
id: gdtools_VALIDATE.cwl
inputs:
- id: in_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. If provided,
    will validate seq_ids and positions in the GD file using these.  Option may be
    provided multiple times for multiple files. (OPTIONAL)
  type: File?
  inputBinding:
    prefix: --reference
- id: in_verbose
  doc: Verbose mode. Outputs additional information about progress. (OPTIONAL)
  type: string?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gdtools
- VALIDATE
