class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mapper.cwl
inputs:
- id: name_coordinates_source
  doc: Name and Coordinates of source contig, e.g. CONSENSUS:100-200
  type: string
  inputBinding:
    prefix: -f
- id: name_target_contig
  doc: Name of target contig
  type: string
  inputBinding:
    prefix: -t
- id: coordinates_should_treated
  doc: Whether coordinates should be treated 1-based
  type: boolean
  inputBinding:
    prefix: '-1'
- id: print_more_information
  doc: Print more information (such as subsequences in references)
  type: boolean
  inputBinding:
    prefix: -v
- id: msa_file
  doc: file containing MSA
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mapper
