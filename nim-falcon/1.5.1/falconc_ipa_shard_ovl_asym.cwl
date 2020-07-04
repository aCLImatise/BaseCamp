class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/falconc_ipa_shard_ovl_asym.cwl
inputs:
- id: help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: _maxnshards_int
  doc: =, --max-nshards=   int     REQUIRED  Maximum number of distributed jobs
  type: boolean
  inputBinding:
    prefix: -m
- id: _shardprefix_string
  doc: =, --shard-prefix=  string  "shard"   The output. Shard files are (prefix).(shard_id).block_ids
    (though they really are block_id ranges).
  type: boolean
  inputBinding:
    prefix: -s
- id: _int_required
  doc: =, --n=             int     REQUIRED  Generate comparisons for upper-triangle
    of nxn matrix
  type: boolean
  inputBinding:
    prefix: -n
- id: _outidsfn_string
  doc: =, --out-ids-fn=    string  ""        If given, this lists the shard_ids, 0
    thru N-1, corresponding to the shard-prefix.block_id files. Useful for Cromwell.
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- falconc
- ipa-shard-ovl-asym
