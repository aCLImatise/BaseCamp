class: CommandLineTool
id: falconc_ipa_shard_mapping.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__maxnshards_int
  doc: =, --max-nshards=     int     REQUIRED  Maximum number of distributed jobs
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__shardprefix_string
  doc: "=, --shard-prefix=    string  \"shard\"   The output. Shard files are\n(prefix).(shard_id).block_ids\n\
    (though they really are block_id\nranges)."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__nqueryblocks_int
  doc: =, --n_query_blocks=  int     REQUIRED  Number of blocks in query db
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_n_target_blocks
  doc: =      int     REQUIRED  Number of blocks in target db
  type: boolean?
  inputBinding:
    prefix: --n_target_blocks
- id: in_outidsfn_string_given
  doc: "=, --out-ids-fn=      string  \"\"        If given, this lists the shard_ids,\n\
    0 thru N-1, corresponding to the\nshard-prefix.block_id files. Useful\nfor Cromwell.\n"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_ipa_shard_mapping
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- falconc
- ipa-shard-mapping
