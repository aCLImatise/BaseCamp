class: CommandLineTool
id: PePr_postprocess.cwl
inputs:
- id: in_peak
  doc: peak file
  type: File
  inputBinding:
    prefix: --peak
- id: in_chip
  doc: chip files separated by comma
  type: string
  inputBinding:
    prefix: --chip
- id: in_input
  doc: input files separated by comma
  type: string
  inputBinding:
    prefix: --input
- id: in_file_type
  doc: read file types. bed, sam, bam
  type: File
  inputBinding:
    prefix: --file-type
- id: in_remove_artefacts
  doc: remove peaks that may be caused by excess PCR
  type: boolean
  inputBinding:
    prefix: --remove-artefacts
- id: in_duplicates
  doc: --narrow-peak-boundary
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PePr-postprocess
