class: CommandLineTool
id: agat_sp_manage_attributes.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_type
  doc: "primary tag option, case insensitive, list. Allow to specied the\nfeature\
    \ types that will be handled. You can specified a specific\nfeature by given its\
    \ primary tag name (column 3) as: cds, Gene,\nMrNa You can specify directly all\
    \ the feature of a particular\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc\
    \ By\ndefault all feature are taking in account. fill the option by\nthe value\
    \ \"all\" will have the same behaviour."
  type: long?
  inputBinding:
    prefix: --type
- id: in_tag
  doc: "Attributes with the tag specified will be removed from the\nfeature type specified\
    \ by the option p (primary tag). List of\ntag must be coma separated. /!\\\\ You\
    \ must use \"\" if name\ncontains spaces. Instead to remove an attribute, you\
    \ can replace\nits Tag by a new Tag using this formulation tagName/newTagName.\n\
    To remove all attributes non mandatory (only ID and Parent are\nmandatory) you\
    \ can use the option with <all_attributes>\nparameter."
  type: boolean?
  inputBinding:
    prefix: --tag
- id: in_add
  doc: "Attribute specified will be added if doesn't exist. The value\nwill be 'empty'."
  type: boolean?
  inputBinding:
    prefix: --add
- id: in_cp
  doc: "When attributes specied are with this form: tagName/newTagName.\nBy using\
    \ this <cp> parameter, the tag will not be modified but\nduplicated with the new\
    \ tagName."
  type: boolean?
  inputBinding:
    prefix: --cp
- id: in_outfile
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_agat_sp_manage_attributes_do_tpl
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
- agat_sp_manage_attributes.pl
