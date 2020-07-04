class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/quasitools_complexity_fasta.cwl
inputs:
- id: output_location
  doc: Output the quasispecies complexity in CSV format to the specified file.
  type: File
  inputBinding:
    prefix: --output_location
- id: fast_a_location
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- complexity
- fasta
