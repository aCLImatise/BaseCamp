class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_convert_embl2gff.pl.cwl
inputs:
- id: embl
  doc: Input EMBL file that will be read
  type: boolean
  inputBinding:
    prefix: --embl
- id: primary_tag
  doc: List of "primary tag". Useful to discard or keep specific features. Multiple
    tags must be coma-separated.
  type: boolean
  inputBinding:
    prefix: --primary_tag
- id: means_tags_discarded
  doc: Means that primary tags provided by the option "primary_tag" will be discarded.
  type: boolean
  inputBinding:
    prefix: -d
- id: outfile
  doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  type: string
  inputBinding:
    prefix: --outfile
- id: gaas_converter_embl_two_gff_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_convert_embl2gff.pl
