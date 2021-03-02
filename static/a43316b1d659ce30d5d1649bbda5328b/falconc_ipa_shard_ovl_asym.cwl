class: CommandLineTool
id: falconc_ipa_shard_ovl_asym.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__maxnshards_int
  doc: =, --max-nshards=   int     REQUIRED  Maximum number of distributed jobs
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__shardprefix_string
  doc: "=, --shard-prefix=  string  \"shard\"   The output. Shard files are\n(prefix).(shard_id).block_ids\
    \ (though\nthey really are block_id ranges)."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__int_required
  doc: "=, --n=             int     REQUIRED  Generate comparisons for\nupper-triangle\
    \ of nxn matrix"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_outidsfn_string_corresponding
  doc: "=, --out-ids-fn=    string  \"\"        If given, this lists the shard_ids,\n\
    0 thru N-1, corresponding to the\nshard-prefix.block_id files. Useful\nfor Cromwell.\n"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_ipa_shard_ovl_asym
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
  dockerPull: quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0
cwlVersion: v1.1
baseCommand:
- falconc
- ipa-shard-ovl-asym
