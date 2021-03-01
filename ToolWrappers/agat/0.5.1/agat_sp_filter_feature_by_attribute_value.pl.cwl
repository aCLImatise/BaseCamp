class: CommandLineTool
id: agat_sp_filter_feature_by_attribute_value.pl.cwl
inputs:
- id: in_ref_file
  doc: Input GFF3 file that will be read
  type: File?
  inputBinding:
    prefix: --reffile
- id: in_attribute
  doc: "Attribute tag to specify the attribute to analyse (attribute\nexample: tag=value)."
  type: string?
  inputBinding:
    prefix: --attribute
- id: in_type
  doc: "primary tag option, case insensitive, list. Allow to specied the\nfeature\
    \ types that will be handled. You can specified a specific\nfeature by given its\
    \ primary tag name (column 3) as: cds, Gene,\nMrNa You can specify directly all\
    \ the feature of a particular\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc\
    \ By\ndefault all feature are taking into account. fill the option by\nthe value\
    \ \"all\" will have the same behaviour."
  type: long?
  inputBinding:
    prefix: --type
- id: in_value
  doc: to check in the attribute
  type: string?
  inputBinding:
    prefix: --value
- id: in_test
  doc: to apply (> < = >= <=). default value "=". If you us
  type: string?
  inputBinding:
    prefix: --test
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose_option_debugging
  doc: Verbose option for debugging purpose.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_sp_select_feature_by_attribute_value_do_tpl
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
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.5.1--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_filter_feature_by_attribute_value.pl
