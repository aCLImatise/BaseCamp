class: CommandLineTool
id: biopet_basecounter.cwl
inputs:
- id: in_log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string?
  inputBinding:
    prefix: --log_level
- id: in_ref_flat
  doc: refFlat file. Mandatory
  type: File?
  inputBinding:
    prefix: --refFlat
- id: in_output_dir
  doc: Output directory. Mandatory
  type: Directory?
  inputBinding:
    prefix: --outputDir
- id: in_bam
  doc: Bam file. Mandatory
  type: File?
  inputBinding:
    prefix: --bam
- id: in_prefix
  doc: The prefix for the output files
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_base_counter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory. Mandatory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- biopet-basecounter
