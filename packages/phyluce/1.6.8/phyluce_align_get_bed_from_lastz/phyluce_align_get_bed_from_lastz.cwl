class: CommandLineTool
id: phyluce_align_get_bed_from_lastz.cwl
inputs:
- id: in_last_z
  doc: The input lastz file.
  type: File
  inputBinding:
    prefix: --lastz
- id: in_output
  doc: The output BED file
  type: File
  inputBinding:
    prefix: --output
- id: in_identity
  doc: The minimum percent identity to output
  type: string
  inputBinding:
    prefix: --identity
- id: in_continuity
  doc: The minimum percent continuity to output
  type: string
  inputBinding:
    prefix: --continuity
- id: in_long_format
  doc: Long-format LASTZ file
  type: boolean
  inputBinding:
    prefix: --long-format
- id: in_conf
  doc: A python INI formatted file containins loci to keep
  type: File
  inputBinding:
    prefix: --conf
- id: in_sections
  doc: "The sections of files to move\n"
  type: string[]
  inputBinding:
    prefix: --sections
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output BED file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_align_get_bed_from_lastz
