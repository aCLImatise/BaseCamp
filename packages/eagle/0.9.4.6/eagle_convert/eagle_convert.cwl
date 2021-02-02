class: CommandLineTool
id: ../../../eagle_convert.cwl
inputs:
- id: in_samples
  doc: "[SAMPLES [SAMPLES ...]]\nlimit the output creation to these samples"
  type: boolean
  inputBinding:
    prefix: --samples
- id: in_ref
  doc: "the reference in fasta format to extract a variant\nmotifs information\n"
  type: string
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- eagle
- convert
