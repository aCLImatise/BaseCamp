class: CommandLineTool
id: ../../../splash_turnover.cwl
inputs:
- id: bed
  doc: BED file
  type: string
  inputBinding:
    prefix: --bed
- id: min_half_life
  doc: Lower bound for the simulated half lifes in minutes
  type: long
  inputBinding:
    prefix: --min-halflife
- id: max_half_life
  doc: Upper bound for the simulated half lifes in minutes
  type: long
  inputBinding:
    prefix: --max-halflife
- id: output_dir
  doc: Output directory for mapped BAM files.
  type: string
  inputBinding:
    prefix: --outputDir
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- turnover
