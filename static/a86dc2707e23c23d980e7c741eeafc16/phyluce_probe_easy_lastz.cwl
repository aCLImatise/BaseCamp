class: CommandLineTool
id: phyluce_probe_easy_lastz.cwl
inputs:
- id: in_target
  doc: The path to the target file (2bit/fasta)
  type: File
  inputBinding:
    prefix: --target
- id: in_query
  doc: The path to the query file (2bit/fasta)
  type: File
  inputBinding:
    prefix: --query
- id: in_output
  doc: The path to the output file
  type: File
  inputBinding:
    prefix: --output
- id: in_identity
  doc: The minimum percent identity to require for a match
  type: string
  inputBinding:
    prefix: --identity
- id: in_coverage
  doc: The minimum coverage (%) required for a match
  type: string
  inputBinding:
    prefix: --coverage
- id: in_min_match
  doc: "The minimum number of base pairs required for a match\n"
  type: long
  inputBinding:
    prefix: --min_match
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The path to the output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_probe_easy_lastz
