class: CommandLineTool
id: phyluce_probe_get_locus_bed_from_lastz_files.cwl
inputs:
- id: input
  doc: The input directory containing lastz files
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output directory to hold BED-formatted files
  type: string
  inputBinding:
    prefix: --output
- id: regex
  doc: A regular expression to apply to the probe sequences for replacement
  type: string
  inputBinding:
    prefix: --regex
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_probe_get_locus_bed_from_lastz_files
