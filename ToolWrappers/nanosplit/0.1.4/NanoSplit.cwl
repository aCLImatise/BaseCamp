class: CommandLineTool
id: ../../../NanoSplit.cwl
inputs:
- id: in_quality
  doc: Splitting on this average read quality score
  type: string
  inputBinding:
    prefix: --quality
- id: in_outdir
  doc: Specify directory in which output has to be created.
  type: Directory
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Specify directory in which output has to be created.
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- NanoSplit
