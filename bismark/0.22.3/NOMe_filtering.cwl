class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/NOMe_filtering.cwl
inputs:
- id: genome_folder
  doc: Enter the genome folder you wish to use to extract sequences from (full path
    only!). Accepted formats are FastA files ending with '.fa' or '.fasta'. Specifying
    a genome folder path is mandatory.
  type: File
  inputBinding:
    prefix: --genome_folder
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- NOMe_filtering
