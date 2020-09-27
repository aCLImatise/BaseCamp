class: CommandLineTool
id: falconc_ipa2_polish_prepare.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__maxnshards_int
  doc: =, --max-nshards=   int     REQUIRED    Maximum number of distributed jobs
  type: boolean
  inputBinding:
    prefix: -m
- id: in__shardprefix_string
  doc: "=, --shard-prefix=  string  \"shard_id\"  The output. Shard files are\n(prefix).(shard_id).block_ids"
  type: boolean
  inputBinding:
    prefix: -s
- id: in__blockprefix_string
  doc: "=, --block-prefix=  string  \"block_id\"  Block files are\n(prefix).(block_id).reads\
    \ (prepared\npreviously)"
  type: boolean
  inputBinding:
    prefix: -b
- id: in__outidsfn_string
  doc: "=, --out-ids-fn=    string  \"\"          If given, this lists the shard_ids,\n\
    0 thru N-1, corresponding to the\nshard-prefix.block_id files.\n"
  type: boolean
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- ipa2-polish-prepare
