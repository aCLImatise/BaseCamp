class: CommandLineTool
id: ../../../falconc_ipa_shard_ovl_asym.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__maxnshards_int
  doc: =, --max-nshards=   int     REQUIRED  Maximum number of distributed jobs
  type: boolean
  inputBinding:
    prefix: -m
- id: in__shardprefix_string
  doc: "=, --shard-prefix=  string  \"shard\"   The output. Shard files are\n(prefix).(shard_id).block_ids\
    \ (though\nthey really are block_id ranges)."
  type: boolean
  inputBinding:
    prefix: -s
- id: in__n_int
  doc: "=, --n=             int     REQUIRED  Generate comparisons for\nupper-triangle\
    \ of nxn matrix"
  type: boolean
  inputBinding:
    prefix: -n
- id: in__outidsfn_string
  doc: "=, --out-ids-fn=    string  \"\"        If given, this lists the shard_ids,\
    \ 0\nthru N-1, corresponding to the\nshard-prefix.block_id files. Useful\nfor\
    \ Cromwell.\n"
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
- ipa-shard-ovl-asym
