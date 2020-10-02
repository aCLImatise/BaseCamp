class: CommandLineTool
id: writedb_entry.cwl
inputs:
- id: in_flatten_gene_y
  doc: '[y|n] flatten the gene model, default is y'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_flt
  doc: space separated list of qualifiers to ignore (GFF only)
  type: boolean
  inputBinding:
    prefix: -flt
- id: in_ignore_obsolete_features
  doc: '[y|n] ignore obsolete features, default is y'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_space_separated_list_read
  doc: space separated list of sequences to read and write out
  type: boolean
  inputBinding:
    prefix: -s
- id: in_output_format_default
  doc: '[EMBL|GFF] output format, default is EMBL'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_location_embl_qualifiermapping
  doc: location of EMBL mapping files (qualifier_mapping and key_mapping)
  type: boolean
  inputBinding:
    prefix: -l
- id: in_gzip_output_default
  doc: '[y|n] gzip output, default is y'
  type: boolean
  inputBinding:
    prefix: -z
- id: in_embl_submission_format
  doc: '[y|n] for EMBL submission format change to n, default is y'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_pp
  doc: '[y|n] read polypeptide domain features, default is n'
  type: boolean
  inputBinding:
    prefix: -pp
- id: in_remove_product_qualifiers
  doc: '[y|n] remove product qualifiers from pseudogene (only for EMBL submission
    format), default is n'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_url_using_default
  doc: the URL for your Chado database e.g. server_name:port/database_name?user (if
    not using default)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_ui_mode_run
  doc: '[swing|console|script] the UI mode : run in swing (with popup dialog boxes)
    mode, run in console mode (choices entered in the console window), or in script
    mode (all choices default to continue, all parameters passed on command line)'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_password_connecting_chado
  doc: the password for connecting to the Chado database
  type: boolean
  inputBinding:
    prefix: -p
- id: in_fp
  doc: the file path (the folder you want to save the files in)
  type: boolean
  inputBinding:
    prefix: -fp
- id: in_np
  doc: '[y|n] do not write out private qualifiers, default is y'
  type: boolean
  inputBinding:
    prefix: -np
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- writedb_entry
