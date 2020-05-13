class: CommandLineTool
id: make_rarefaction_plots.py.cwl
inputs:
- id: input_dir
  doc: Input directory containing results from collate_alpha.py. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_dir
- id: map_fname
  doc: Input metadata mapping filepath. [REQUIRED]
  type: string
  inputBinding:
    prefix: --map_fname
outputs: []
cwlVersion: v1.1
baseCommand:
- make_rarefaction_plots.py
