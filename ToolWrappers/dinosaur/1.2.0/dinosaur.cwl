class: CommandLineTool
id: dinosaur.cwl
inputs:
- id: in_adv_params
  doc: path to adv param file
  type: string
  inputBinding:
    position: 0
- id: in_outdir
  doc: output directory (by default same as input mzML)
  type: string
  inputBinding:
    position: 0
- id: in_out_name
  doc: basename for output files (by default same as input mzML)
  type: string
  inputBinding:
    position: 1
- id: in_targets
  doc: path to isotope patterns target file (not used by default)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dinosaur
