class: CommandLineTool
id: phyluce_probe_get_locus_bed_from_lastz_files.cwl
inputs:
- id: in_output
  doc: '[--regex REGEX]'
  type: string
  inputBinding:
    prefix: --output
- id: in_input
  doc: The input directory containing lastz files
  type: Directory
  inputBinding:
    prefix: --input
- id: in_regex
  doc: "A regular expression to apply to the probe sequences for\nreplacement\n"
  type: string
  inputBinding:
    prefix: --regex
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_locus_bed_from_lastz_files
