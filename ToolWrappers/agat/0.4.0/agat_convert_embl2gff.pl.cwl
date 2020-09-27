class: CommandLineTool
id: agat_convert_embl2gff.pl.cwl
inputs:
- id: in_embl
  doc: Input EMBL file that will be read
  type: boolean
  inputBinding:
    prefix: --embl
- id: in_primary_tag
  doc: "List of \"primary tag\". Useful to discard or keep specific\nfeatures. Multiple\
    \ tags must be coma-separated."
  type: boolean
  inputBinding:
    prefix: --primary_tag
- id: in_means_tags_discarded
  doc: "Means that primary tags provided by the option \"primary_tag\"\nwill be discarded."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File
  inputBinding:
    prefix: --outfile
- id: in_gaas_converter_embl_two_gff_do_tpl
  doc: 'Description:'
  type: long
  inputBinding:
    position: 0
- id: in_format_dot
  doc: "Usage:\ngaas_converter_embl2gff.pl --embl infile.embl [ -o outfile ]"
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
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- agat_convert_embl2gff.pl
