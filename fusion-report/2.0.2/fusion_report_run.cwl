class: CommandLineTool
id: fusion_report_run.cwl
inputs:
- id: sample
  doc: Sample name
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
- id: db_path
  doc: Path to folder where all databases are stored.
  type: string
  inputBinding:
    position: 2
- id: eric_script
  doc: EricScript output file
  type: string
  inputBinding:
    prefix: --ericscript
- id: eric_script_weight
  doc: EricScript output file
  type: string
  inputBinding:
    prefix: --ericscript_weight
- id: fusion_catcher
  doc: Fusioncatcher output file
  type: string
  inputBinding:
    prefix: --fusioncatcher
- id: fusion_catcher_weight
  doc: Fusioncatcher output file
  type: string
  inputBinding:
    prefix: --fusioncatcher_weight
- id: star_fusion
  doc: STAR-Fusion output file
  type: string
  inputBinding:
    prefix: --starfusion
- id: star_fusion_weight
  doc: STAR-Fusion output file
  type: string
  inputBinding:
    prefix: --starfusion_weight
- id: pizz_ly
  doc: Pizzly output file
  type: string
  inputBinding:
    prefix: --pizzly
- id: pizz_ly_weight
  doc: Pizzly output file
  type: string
  inputBinding:
    prefix: --pizzly_weight
- id: squid
  doc: Squid output file
  type: string
  inputBinding:
    prefix: --squid
- id: squid_weight
  doc: Squid output file
  type: string
  inputBinding:
    prefix: --squid_weight
- id: drag_en
  doc: Illumina Dragen Bio-IT Platform output file
  type: string
  inputBinding:
    prefix: --dragen
- id: drag_en_weight
  doc: Illumina Dragen Bio-IT Platform output file
  type: string
  inputBinding:
    prefix: --dragen_weight
- id: arriba
  doc: Arriba output file
  type: string
  inputBinding:
    prefix: --arriba
- id: arriba_weight
  doc: Arriba output file
  type: string
  inputBinding:
    prefix: --arriba_weight
- id: config
  doc: Input config file
  type: string
  inputBinding:
    prefix: --config
- id: tool_cut_off
  doc: Number of tools required to detect a fusion
  type: string
  inputBinding:
    prefix: --tool_cutoff
- id: export
  doc: 'Export fusions in different formats. Currently supported: json, csv.'
  type: string
  inputBinding:
    prefix: --export
outputs: []
cwlVersion: v1.1
baseCommand:
- fusion_report
- run
