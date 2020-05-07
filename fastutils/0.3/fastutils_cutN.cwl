class: CommandLineTool
id: fastutils_cutN.cwl
inputs:
- id: i
  doc: input file in fastx format. Use - for stdin.
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: output file in fasta format. Use - for stdout.
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: print version and build date
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- fastutils
- cutN
