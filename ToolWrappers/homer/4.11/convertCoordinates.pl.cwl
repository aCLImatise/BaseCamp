class: CommandLineTool
id: convertCoordinates.pl.cwl
inputs:
- id: in_type
  doc: (input is a tag directory, peak file, tags file, or BED file, or GTF file)
  type: Directory?
  inputBinding:
    prefix: -type
- id: in_number_cpus_use
  doc: '<#> (Number of CPUs to use, default: 1)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_min_match
  doc: '<#> (minimum % of nucleotides that must match, default: 0.1)'
  type: boolean?
  inputBinding:
    prefix: -minMatch
- id: in_directory
  doc: (input is a tag directory, default)
  type: boolean?
  inputBinding:
    prefix: -directory
- id: in_peaks
  doc: (input is a peak file)
  type: boolean?
  inputBinding:
    prefix: -peaks
- id: in_tags
  doc: (input is a tag file)
  type: boolean?
  inputBinding:
    prefix: -tags
- id: in_bed
  doc: (input is a bed file)
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_gtf
  doc: (input is a gtf file)
  type: boolean?
  inputBinding:
    prefix: -gtf
- id: in_lift_over_dot_over_dot_chain_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_input_file_slash_directory
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_output_file_slash_directory
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_slash_directory
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_slash_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- convertCoordinates.pl
