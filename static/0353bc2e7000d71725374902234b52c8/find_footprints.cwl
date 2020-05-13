class: CommandLineTool
id: find_footprints.sh_fixed_bg.cwl
inputs:
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: motif_coords
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: genome_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: factor_name
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: bias_file
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: peak_file
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: no_of_components
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: background
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: fixed_bg
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- find_footprints.sh
- fixed_bg
