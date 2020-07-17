class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/xam_coverage_bins.pl.cwl
inputs:
- id: x_am_file
  doc: -f    bam|cram file to check coverage.
  type: boolean
  inputBinding:
    prefix: -xam_file
- id: target_file
  doc: -r    bed|gff3 file of targets.
  type: boolean
  inputBinding:
    prefix: -target_file
- id: output_file
  doc: -o    file to write JSON string output of coverage
  type: boolean
  inputBinding:
    prefix: -output_file
- id: type
  doc: -t    Type of target file provided [bed|gff3]
  type: boolean
  inputBinding:
    prefix: -type
- id: version
  doc: -v   Print version and exit.
  type: boolean
  inputBinding:
    prefix: -version
- id: man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: x_am_files
  doc: bam|cram file to check coverage.
  type: boolean
  inputBinding:
    prefix: -xam_files
outputs: []
cwlVersion: v1.1
baseCommand:
- xam_coverage_bins.pl
