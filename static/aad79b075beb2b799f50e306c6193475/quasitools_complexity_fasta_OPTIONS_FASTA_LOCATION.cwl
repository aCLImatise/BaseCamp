class: CommandLineTool
id: quasitools_complexity_fasta_OPTIONS_FASTA_LOCATION.cwl
inputs:
- id: output_location
  doc: Output the quasispecies complexity in CSV format to the specified file.
  type: File
  inputBinding:
    prefix: --output_location
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- complexity
- fasta
- OPTIONS
- FASTA_LOCATION
