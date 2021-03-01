class: CommandLineTool
id: agat_sp_Prokka_inferNameFromAttributes.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_force
  doc: "Name attribute already exists, they will be replaced if a new\none is found"
  type: string?
  inputBinding:
    prefix: --force
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_sp_pro_kk_a_infer_name_from_attributes_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- agat_sp_Prokka_inferNameFromAttributes.pl
