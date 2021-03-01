class: CommandLineTool
id: agat_sp_filter_by_ORF_size.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_size
  doc: ORF size to apply the test. Default 100.
  type: long?
  inputBinding:
    prefix: --size
- id: in_test
  doc: to apply (> < = >= <=). If you us one of these two
  type: string?
  inputBinding:
    prefix: --test
- id: in_verbose_useful_debugging
  doc: Verbose. Useful for debugging purpose. Bolean
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_sp_filter_by_orf_size_do_tpl
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
- agat_sp_filter_by_ORF_size.pl
