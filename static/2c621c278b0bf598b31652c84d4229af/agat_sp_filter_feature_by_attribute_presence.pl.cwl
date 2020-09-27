class: CommandLineTool
id: agat_sp_filter_feature_by_attribute_presence.pl.cwl
inputs:
- id: in_ref_file
  doc: Input GFF3 file that will be read
  type: File
  inputBinding:
    prefix: --reffile
- id: in_type
  doc: "primary tag option, case insensitive, list. Allow to specied the\nfeature\
    \ types that will be handled. You can specified a specific\nfeature by given its\
    \ primary tag name (column 3) as: cds, Gene,\nMrNa You can specify directly all\
    \ the feature of a particular\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc\
    \ By\ndefault all feature are taking into account. fill the option by\nthe value\
    \ \"all\" will have the same behaviour."
  type: long
  inputBinding:
    prefix: --type
- id: in_attribute
  doc: "String - Attributes tag specified will be used to filter the\nfeature type\
    \ (feature type can also be specified by the option\n-p). List of attribute tags\
    \ must be coma separated."
  type: boolean
  inputBinding:
    prefix: --attribute
- id: in_flip
  doc: "BOLEAN - In order to flip the test and keep features that do\nhave the attribute\
    \ and filter those without"
  type: boolean
  inputBinding:
    prefix: --flip
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File
  inputBinding:
    prefix: --output
- id: in_agat_sp_select_feature_by_attribute_presence_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_feature_by_attribute_presence.pl
