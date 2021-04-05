class: CommandLineTool
id: agat_sq_manage_attributes.pl.cwl
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
    \ By\ndefault all feature are taking in account."
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
  doc: "Attribute with the tag specified will be added if doesn't exist.\nThe value\
    \ will be 'empty'."
  type: boolean?
  inputBinding:
    prefix: --add
- id: in_cp
  doc: "When tags specied are with this form: tagName/newTagName. By\nusing this <cp>\
    \ parameter, the attribute with the tag tagName\nwill be duplicated with the new\
    \ tag newTagName if no attribute\nwith the tag newTagName already exits."
  type: boolean?
  inputBinding:
    prefix: --cp
- id: in_overwrite
  doc: "When using --add parameter, if an attribute with the specificed\ntag already\
    \ exists, it will not be modified. When using --cp\nparameter, if an attribute\
    \ with the specificed newTagName\nalready exists, it will not be modified. So\
    \ using the\n--overwrite parameter allows to overwrite the value of the\nexisting\
    \ attribute."
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_value
  doc: "When a value is provided the attribute is taken into\naccount only if the\
    \ attribute contains (or match) a specific\nvalue"
  type: string?
  inputBinding:
    prefix: --value
- id: in_strategy
  doc: "String. [Default equal]. Strategy to use when --value parameter\nis in use.\
    \ Can be equal or match. Equal => the attribute value\nmust be identical. Match\
    \ => the attribute value must match"
  type: boolean?
  inputBinding:
    prefix: --strategy
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sq_manage_attributes.pl
