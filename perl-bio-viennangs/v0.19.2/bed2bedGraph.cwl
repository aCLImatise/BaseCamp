class: CommandLineTool
id: ../../../bed2bedGraph.pl.cwl
inputs:
- id: bed_file_conversion
  doc: BED file for conversion.
  type: boolean
  inputBinding:
    prefix: -f
- id: file_containing_sizes
  doc: File containing chromosome sizes
  type: boolean
  inputBinding:
    prefix: -c
- id: type_bed_file
  doc: Type of bed file (e.g. sample name, replicate name, condition, ...)
  type: boolean
  inputBinding:
    prefix: -t
- id: file_standard_bed
  doc: Whether file is a standard bed or extended bed, 'extended' for extended bed
  type: boolean
  inputBinding:
    prefix: -a
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- bed2bedGraph.pl
