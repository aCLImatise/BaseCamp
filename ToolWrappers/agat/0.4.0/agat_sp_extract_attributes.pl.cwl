class: CommandLineTool
id: agat_sp_extract_attributes.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File
  inputBinding:
    prefix: --gff
- id: in_primary_tag_option
  doc: "primary tag option, case insensitive, list. Allow to specied the\nfeature\
    \ types that will be handled. You can specified a specific\nfeature by given its\
    \ primary tag name (column 3) as: cds, Gene,\nMrNa You can specify directly all\
    \ the feature of a particular\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc\
    \ By\ndefault all feature are taking in account. fill the option by\nthe value\
    \ \"all\" will have the same behaviour."
  type: long
  inputBinding:
    prefix: -p
- id: in_attribute
  doc: "attribute tag. The value of the attribute tag specified will be\nextracted\
    \ from the feature type specified by the option -p. List\nof attributes must be\
    \ coma separated."
  type: boolean
  inputBinding:
    prefix: --attribute
- id: in_merge
  doc: "By default the values of each attribute tag is writen in its\ndedicated file.\
    \ To write the values of all tags in only one file\nuse this option."
  type: File
  inputBinding:
    prefix: --merge
- id: in_default_when_attribute
  doc: "By default when an attribute is not found for a feature, a dot\n(.) is reported.\
    \ If you don't want anything to be printed in\nsuch case use this option."
  type: boolean
  inputBinding:
    prefix: -d
- id: in__output_
  doc: ", --output , --out or --outfile\nOutput GFF file. If no output file is specified,\
    \ the output will\nbe written to STDOUT."
  type: File
  inputBinding:
    prefix: -o
- id: in_agat_sp_extract_attributes_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_
  doc: ", --output , --out or --outfile\nOutput GFF file. If no output file is specified,\
    \ the output will\nbe written to STDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in__output_)
cwlVersion: v1.1
baseCommand:
- agat_sp_extract_attributes.pl
