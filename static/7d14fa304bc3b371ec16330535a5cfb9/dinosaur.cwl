class: CommandLineTool
id: dinosaur.cwl
inputs:
- id: adv_params
  doc: path to adv param file
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: output directory (by default same as input mzML)
  type: string
  inputBinding:
    position: 0
- id: out_name
  doc: basename for output files (by default same as input mzML)
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dinosaur
