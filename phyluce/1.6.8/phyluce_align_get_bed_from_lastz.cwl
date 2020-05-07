class: CommandLineTool
id: phyluce_align_get_bed_from_lastz.cwl
inputs:
- id: last_z
  doc: The input lastz file.
  type: string
  inputBinding:
    prefix: --lastz
- id: output
  doc: The output BED file
  type: string
  inputBinding:
    prefix: --output
- id: identity
  doc: The minimum percent identity to output
  type: string
  inputBinding:
    prefix: --identity
- id: continuity
  doc: The minimum percent continuity to output
  type: string
  inputBinding:
    prefix: --continuity
- id: long_format
  doc: Long-format LASTZ file
  type: boolean
  inputBinding:
    prefix: --long-format
- id: conf
  doc: A python INI formatted file containins loci to keep
  type: string
  inputBinding:
    prefix: --conf
- id: sections
  doc: The sections of files to move
  type: string[]
  inputBinding:
    prefix: --sections
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_bed_from_lastz
