class: CommandLineTool
id: xam_coverage_bins.pl.cwl
inputs:
- id: in_x_am_file
  doc: -f    bam|cram file to check coverage.
  type: boolean
  inputBinding:
    prefix: -xam_file
- id: in_target_file
  doc: -r    bed|gff3 file of targets.
  type: boolean
  inputBinding:
    prefix: -target_file
- id: in_output_file
  doc: -o    file to write JSON string output of coverage
  type: File
  inputBinding:
    prefix: -output_file
- id: in_type
  doc: -t    Type of target file provided [bed|gff3]
  type: boolean
  inputBinding:
    prefix: -type
- id: in_version
  doc: -v   Print version and exit.
  type: boolean
  inputBinding:
    prefix: -version
- id: in_man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_x_am_files
  doc: bam|cram file to check coverage.
  type: boolean
  inputBinding:
    prefix: -xam_files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: -o    file to write JSON string output of coverage
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- xam_coverage_bins.pl
