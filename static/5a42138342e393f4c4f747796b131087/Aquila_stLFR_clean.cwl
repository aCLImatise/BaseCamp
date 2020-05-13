class: CommandLineTool
id: Aquila_stLFR_clean.cwl
inputs:
- id: assembly_dir
  doc: assembly folder
  type: string
  inputBinding:
    prefix: --assembly_dir
- id: chr_start
  doc: chromosome start from
  type: string
  inputBinding:
    prefix: --chr_start
- id: chr_end
  doc: chromosome end by
  type: string
  inputBinding:
    prefix: --chr_end
- id: num_of_threads
  doc: number of threads
  type: string
  inputBinding:
    prefix: --num_of_threads
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_stLFR_clean
