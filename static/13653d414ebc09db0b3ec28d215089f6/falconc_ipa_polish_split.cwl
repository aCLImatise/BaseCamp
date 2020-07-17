class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/falconc_ipa_polish_split.cwl
inputs:
- id: help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: _maxnshards_int
  doc: =, --max-nshards=           int     REQUIRED                     Maximum number
    of distributed jobs
  type: boolean
  inputBinding:
    prefix: -m
- id: _shardprefix_string
  doc: =, --shard-prefix=          string  "shard"                      The output.
    Shard files are (prefix).(shard_id).block_ids
  type: boolean
  inputBinding:
    prefix: -s
- id: _blockprefix_string
  doc: =, --block-prefix=          string  "block"                      Block files
    are (prefix).(block_id).reads (prepared previously)
  type: boolean
  inputBinding:
    prefix: -b
- id: _inreadtocontigfn_string
  doc: '=, --in-read-to-contig-fn=  string  "sorted.read_to_contig.csv"  2-columns:
    read# ctg-name'
  type: boolean
  inputBinding:
    prefix: -i
- id: _outidsfn_string
  doc: =, --out-ids-fn=            string  "all_shard_ids"              If given,
    this lists the shard_ids, 0 thru N-1, corresponding to the shard-prefix.block_id
    files.
  type: boolean
  inputBinding:
    prefix: -o
- id: mb_per_block
  doc: =               int     REQUIRED                     Try to target megabases
    total in all contigs in any block
  type: boolean
  inputBinding:
    prefix: --mb-per-block
- id: blacklist_fn
  doc: =               string  ""                           Specifies a file with
    a list of contigs to skip for polishing.
  type: boolean
  inputBinding:
    prefix: --blacklist-fn
outputs: []
cwlVersion: v1.1
baseCommand:
- falconc
- ipa-polish-split
