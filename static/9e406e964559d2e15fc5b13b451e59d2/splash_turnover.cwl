class: CommandLineTool
id: splash_turnover.cwl
inputs:
- id: in_bed
  doc: BED file
  type: File?
  inputBinding:
    prefix: --bed
- id: in_min_half_life
  doc: Lower bound for the simulated half lifes in minutes
  type: long?
  inputBinding:
    prefix: --min-halflife
- id: in_max_half_life
  doc: Upper bound for the simulated half lifes in minutes
  type: long?
  inputBinding:
    prefix: --max-halflife
- id: in_output_dir
  doc: "Output directory for mapped BAM files.\n"
  type: Directory?
  inputBinding:
    prefix: --outputDir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory for mapped BAM files.\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- splash
- turnover
