class: CommandLineTool
id: chromosomer_fastalength_output_output.cwl
inputs:
- id: fast_a
  doc: a FASTA file which sequence lengths are to be obtained
  type: string
  inputBinding:
    position: 0
- id: output
  doc: an output file of sequence lengths
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- fastalength
- output
- output
