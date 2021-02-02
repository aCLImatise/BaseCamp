class: CommandLineTool
id: agat_sp_fix_overlaping_genes.pl.cwl
inputs:
- id: in_file
  doc: Input GTF/GFF file.
  type: File
  inputBinding:
    prefix: --file
- id: in_outfile
  doc: Output file. If none given, will be display in standard output.
  type: File
  inputBinding:
    prefix: --outfile
- id: in_agat_sp_fix_overlap_ing_genes_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Output file. If none given, will be display in standard output.
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_overlaping_genes.pl
