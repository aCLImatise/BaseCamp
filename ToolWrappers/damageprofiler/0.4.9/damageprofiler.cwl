class: CommandLineTool
id: ../../../damageprofiler.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: in_length
  doc: ''
  type: long
  inputBinding:
    prefix: --length
- id: in_all_mapped_and_merged_reads
  doc: ''
  type: boolean
  inputBinding:
    prefix: --all_mapped_and_merged_reads
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    prefix: --reference
- id: in_specie
  doc: ''
  type: string
  inputBinding:
    prefix: --specie
- id: in_species_list
  doc: <SPECIES LIST>
  type: File
  inputBinding:
    prefix: --specieslist
- id: in_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --threshold
- id: in_use_all_reads
  doc: ''
  type: boolean
  inputBinding:
    prefix: --use_all_reads
- id: in_x_axis_histo_id_max
  doc: ''
  type: long
  inputBinding:
    prefix: --xaxis_histo_id_max
- id: in_x_axis_histo_id_min
  doc: ''
  type: string
  inputBinding:
    prefix: --xaxis_histo_id_min
- id: in_x_axis_histo_length_max
  doc: ''
  type: long
  inputBinding:
    prefix: --xaxis_histo_length_max
- id: in_x_axis_histo_length_min
  doc: ''
  type: long
  inputBinding:
    prefix: --xaxis_histo_length_min
- id: in_yaxis_damage_plot
  doc: ''
  type: string
  inputBinding:
    prefix: --yaxis_damageplot
- id: in_mis_incorporations
  doc: -title,--title <TITLE>
  type: string
  inputBinding:
    position: 0
- id: in_false
  doc: -version,--version
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- damageprofiler
