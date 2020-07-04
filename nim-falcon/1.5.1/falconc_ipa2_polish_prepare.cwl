class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/falconc_ipa2_polish_prepare.cwl
inputs:
- id: help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: _maxnshards_int
  doc: =, --max-nshards=   int     REQUIRED    Maximum number of distributed jobs
  type: boolean
  inputBinding:
    prefix: -m
- id: _shardprefix_string
  doc: =, --shard-prefix=  string  "shard_id"  The output. Shard files are (prefix).(shard_id).block_ids
  type: boolean
  inputBinding:
    prefix: -s
- id: _blockprefix_string
  doc: =, --block-prefix=  string  "block_id"  Block files are (prefix).(block_id).reads
    (prepared previously)
  type: boolean
  inputBinding:
    prefix: -b
- id: _outidsfn_string
  doc: =, --out-ids-fn=    string  ""          If given, this lists the shard_ids,
    0 thru N-1, corresponding to the shard-prefix.block_id files.
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- falconc
- ipa2-polish-prepare
