class: CommandLineTool
id: agat_sp_separate_by_record_type.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File
  inputBinding:
    prefix: --gff
- id: in_output
  doc: "Output folder. If no output folder provided, the default name\nwill be <split_result>."
  type: Directory
  inputBinding:
    prefix: --output
- id: in_agat_sp_separate_by_record_type_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output folder. If no output folder provided, the default name\nwill be <split_result>."
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- agat_sp_separate_by_record_type.pl
