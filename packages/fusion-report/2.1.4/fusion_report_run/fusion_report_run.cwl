class: CommandLineTool
id: fusion_report_run.cwl
inputs:
- id: in_eric_script
  doc: EricScript output file
  type: File?
  inputBinding:
    prefix: --ericscript
- id: in_eric_script_weight
  doc: EricScript output file
  type: File?
  inputBinding:
    prefix: --ericscript_weight
- id: in_fusion_catcher
  doc: Fusioncatcher output file
  type: File?
  inputBinding:
    prefix: --fusioncatcher
- id: in_fusion_catcher_weight
  doc: Fusioncatcher output file
  type: File?
  inputBinding:
    prefix: --fusioncatcher_weight
- id: in_star_fusion
  doc: STAR-Fusion output file
  type: File?
  inputBinding:
    prefix: --starfusion
- id: in_star_fusion_weight
  doc: STAR-Fusion output file
  type: File?
  inputBinding:
    prefix: --starfusion_weight
- id: in_pizz_ly
  doc: Pizzly output file
  type: File?
  inputBinding:
    prefix: --pizzly
- id: in_pizz_ly_weight
  doc: Pizzly output file
  type: File?
  inputBinding:
    prefix: --pizzly_weight
- id: in_squid
  doc: Squid output file
  type: File?
  inputBinding:
    prefix: --squid
- id: in_squid_weight
  doc: Squid output file
  type: File?
  inputBinding:
    prefix: --squid_weight
- id: in_drag_en
  doc: Illumina Dragen Bio-IT Platform output file
  type: File?
  inputBinding:
    prefix: --dragen
- id: in_drag_en_weight
  doc: Illumina Dragen Bio-IT Platform output file
  type: File?
  inputBinding:
    prefix: --dragen_weight
- id: in_arriba
  doc: Arriba output file
  type: File?
  inputBinding:
    prefix: --arriba
- id: in_arriba_weight
  doc: Arriba output file
  type: File?
  inputBinding:
    prefix: --arriba_weight
- id: in_allow_multiple_gene_symbols
  doc: "Case when fusion gene symbol can't be determined and\nmultiple fusion options\
    \ are provided. By default\nprovide the fist proposed fusion."
  type: boolean?
  inputBinding:
    prefix: --allow-multiple-gene-symbols
- id: in_config
  doc: Input config file
  type: File?
  inputBinding:
    prefix: --config
- id: in_tool_cut_off
  doc: Number of tools required to detect a fusion
  type: long?
  inputBinding:
    prefix: --tool-cutoff
- id: in_export
  doc: "Export fusions in different formats. Currently\nsupported: json, csv.\n"
  type: string?
  inputBinding:
    prefix: --export
- id: in_sample
  doc: Sample name
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
- id: in_db_path
  doc: Path to folder where all databases are stored.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_eric_script
  doc: EricScript output file
  type: File?
  outputBinding:
    glob: $(inputs.in_eric_script)
- id: out_eric_script_weight
  doc: EricScript output file
  type: File?
  outputBinding:
    glob: $(inputs.in_eric_script_weight)
- id: out_fusion_catcher
  doc: Fusioncatcher output file
  type: File?
  outputBinding:
    glob: $(inputs.in_fusion_catcher)
- id: out_fusion_catcher_weight
  doc: Fusioncatcher output file
  type: File?
  outputBinding:
    glob: $(inputs.in_fusion_catcher_weight)
- id: out_star_fusion
  doc: STAR-Fusion output file
  type: File?
  outputBinding:
    glob: $(inputs.in_star_fusion)
- id: out_star_fusion_weight
  doc: STAR-Fusion output file
  type: File?
  outputBinding:
    glob: $(inputs.in_star_fusion_weight)
- id: out_pizz_ly
  doc: Pizzly output file
  type: File?
  outputBinding:
    glob: $(inputs.in_pizz_ly)
- id: out_pizz_ly_weight
  doc: Pizzly output file
  type: File?
  outputBinding:
    glob: $(inputs.in_pizz_ly_weight)
- id: out_squid
  doc: Squid output file
  type: File?
  outputBinding:
    glob: $(inputs.in_squid)
- id: out_squid_weight
  doc: Squid output file
  type: File?
  outputBinding:
    glob: $(inputs.in_squid_weight)
- id: out_drag_en
  doc: Illumina Dragen Bio-IT Platform output file
  type: File?
  outputBinding:
    glob: $(inputs.in_drag_en)
- id: out_drag_en_weight
  doc: Illumina Dragen Bio-IT Platform output file
  type: File?
  outputBinding:
    glob: $(inputs.in_drag_en_weight)
- id: out_arriba
  doc: Arriba output file
  type: File?
  outputBinding:
    glob: $(inputs.in_arriba)
- id: out_arriba_weight
  doc: Arriba output file
  type: File?
  outputBinding:
    glob: $(inputs.in_arriba_weight)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fusion-report:2.1.4--py_0
cwlVersion: v1.1
baseCommand:
- fusion_report
- run
