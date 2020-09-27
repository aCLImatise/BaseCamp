class: CommandLineTool
id: bed2bedGraph.pl.cwl
inputs:
- id: in_bed_file_conversion
  doc: BED file for conversion.
  type: boolean
  inputBinding:
    prefix: -f
- id: in_file_containing_sizes
  doc: File containing chromosome sizes
  type: boolean
  inputBinding:
    prefix: -c
- id: in_type_bed_file
  doc: Type of bed file (e.g. sample name, replicate name, condition, ...)
  type: boolean
  inputBinding:
    prefix: -t
- id: in_file_standard_bed
  doc: "Whether file is a standard bed or extended bed, 'extended' for\nextended bed"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bed2bedGraph.pl
