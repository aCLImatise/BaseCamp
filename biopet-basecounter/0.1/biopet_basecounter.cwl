class: CommandLineTool
id: biopet_basecounter.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: ref_flat
  doc: refFlat file. Mandatory
  type: File
  inputBinding:
    prefix: --refFlat
- id: output_dir
  doc: Output directory. Mandatory
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: bam
  doc: Bam file. Mandatory
  type: File
  inputBinding:
    prefix: --bam
- id: prefix
  doc: The prefix for the output files
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-basecounter
