class: CommandLineTool
id: VIBRANT_annotation.py.cwl
inputs:
- id: i
  doc: input fasta file
  type: string
  inputBinding:
    prefix: -i
- id: f
  doc: format of input [default="nucl"]
  type: string
  inputBinding:
    prefix: -f
- id: l
  doc: length in basepairs to limit input sequences [default=1000, can increase but
    not decrease]
  type: string
  inputBinding:
    prefix: -l
- id: o
  doc: number of ORFs per scaffold to limit input sequences [default=4, can increase
    but not decrease]
  type: string
  inputBinding:
    prefix: -o
- id: vi_rome
  doc: use this setting if dataset is known to be comprised mainly of viruses. More
    sensitive to viruses, less sensitive to false identifications [default=off]
  type: boolean
  inputBinding:
    prefix: -virome
- id: d
  doc: path to "databases" directory that contains .HMM files (if moved from default
    location)
  type: string
  inputBinding:
    prefix: -d
- id: m
  doc: path to "files" directory that contains .tsv and model files (if moved from
    default location)
  type: string
  inputBinding:
    prefix: -m
- id: x
  doc: out_folder
  type: string
  inputBinding:
    prefix: -x
- id: y
  doc: base
  type: string
  inputBinding:
    prefix: -y
outputs: []
cwlVersion: v1.1
baseCommand:
- VIBRANT_annotation.py
