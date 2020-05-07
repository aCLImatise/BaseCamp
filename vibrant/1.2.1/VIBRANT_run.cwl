class: CommandLineTool
id: VIBRANT_run.py.cwl
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
- id: folder
  doc: path to deposit output folder and temporary files, will create if doesn't exist
    [default= working directory]
  type: Directory
  inputBinding:
    prefix: -folder
- id: t
  doc: number of parallel VIBRANT runs, each occupies 1 CPU [default=1, max of 1 CPU
    per scaffold]
  type: string
  inputBinding:
    prefix: -t
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
- id: no_plot
  doc: suppress the generation of summary plots [default=off]
  type: boolean
  inputBinding:
    prefix: -no_plot
- id: d
  doc: path to original "databases" directory that contains .HMM files (if moved from
    default location)
  type: string
  inputBinding:
    prefix: -d
- id: m
  doc: path to original "files" directory that contains .tsv and model files (if moved
    from default location)
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- VIBRANT_run.py
