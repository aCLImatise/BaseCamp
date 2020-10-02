class: CommandLineTool
id: parsecasm.cwl
inputs:
- id: in_no_fast_a
  doc: Do not create .fasta output
  type: boolean
  inputBinding:
    prefix: -nofasta
- id: in_just_fast_a
  doc: Only create .fasta output
  type: boolean
  inputBinding:
    prefix: -justfasta
- id: in_output_prefix
  doc: Output prefix
  type: string
  inputBinding:
    prefix: -o
- id: in_no_names
  doc: Uses Ids rather than trying to figure out seqnames
  type: boolean
  inputBinding:
    prefix: -nonames
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- parsecasm
