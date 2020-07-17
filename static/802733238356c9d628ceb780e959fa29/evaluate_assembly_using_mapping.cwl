class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/evaluate_assembly_using_mapping.py.cwl
inputs:
- id: which_bowtie_two
  doc: 'Assign the path to Bowtie2 binary files if not added to the path. Default:
    try GetOrganelleDep/linux/bowtie2 first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-bowtie2
- id: bowtie_two_mode
  doc: 'Default: --sensitive'
  type: string
  inputBinding:
    prefix: --bowtie2-mode
- id: bowtie_two_options
  doc: 'Default: --no-discordant --dovetail'
  type: string
  inputBinding:
    prefix: --bowtie2-options
- id: stat_mode
  doc: "Statistical mode for counting multiple hits of a single read: best/all. The\
    \ all mode is meaningful only when '-k <INT>' was included in '--bowtie2-options'.\
    \ Default: best"
  type: string
  inputBinding:
    prefix: --stat-mode
- id: debug
  doc: Turn on debug mode.
  type: boolean
  inputBinding:
    prefix: --debug
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: one
  doc: ''
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: string
  inputBinding:
    prefix: '-2'
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- evaluate_assembly_using_mapping.py
