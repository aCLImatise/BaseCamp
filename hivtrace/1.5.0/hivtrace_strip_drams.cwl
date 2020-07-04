class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hivtrace_strip_drams.cwl
inputs:
- id: input
  doc: The input FASTA file
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output
  type: string
  inputBinding:
    prefix: --output
- id: dram
  doc: Use this list of DRAMs
  type: string
  inputBinding:
    prefix: --dram
outputs: []
cwlVersion: v1.1
baseCommand:
- hivtrace_strip_drams
