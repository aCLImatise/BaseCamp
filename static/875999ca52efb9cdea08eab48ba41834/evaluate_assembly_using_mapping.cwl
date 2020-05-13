class: CommandLineTool
id: evaluate_assembly_using_mapping.py.cwl
inputs:
- id: which_bowtie2
  doc: 'Assign the path to Bowtie2 binary files if not added to the path. Default:
    try GetOrganelleDep/linux/bowtie2 first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-bowtie2
- id: bowtie2_mode
  doc: 'Default: --sensitive'
  type: string
  inputBinding:
    prefix: --bowtie2-mode
- id: bowtie2_options
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
outputs: []
cwlVersion: v1.1
baseCommand:
- evaluate_assembly_using_mapping.py
