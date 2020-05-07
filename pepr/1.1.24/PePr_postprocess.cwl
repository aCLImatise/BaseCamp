class: CommandLineTool
id: PePr_postprocess.cwl
inputs:
- id: peak
  doc: peak file
  type: string
  inputBinding:
    prefix: --peak
- id: chip
  doc: chip files separated by comma
  type: string
  inputBinding:
    prefix: --chip
- id: input
  doc: input files separated by comma
  type: string
  inputBinding:
    prefix: --input
- id: file_type
  doc: read file types. bed, sam, bam
  type: string
  inputBinding:
    prefix: --file-type
- id: remove_artefacts
  doc: remove peaks that may be caused by excess PCR duplicates
  type: boolean
  inputBinding:
    prefix: --remove-artefacts
- id: narrow_peak_boundary
  doc: make peak width smaller but still contain the core binding region
  type: boolean
  inputBinding:
    prefix: --narrow-peak-boundary
outputs: []
cwlVersion: v1.1
baseCommand:
- PePr-postprocess
