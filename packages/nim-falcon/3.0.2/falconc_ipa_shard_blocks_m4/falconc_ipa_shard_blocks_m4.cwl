class: CommandLineTool
id: falconc_ipa_shard_blocks_m4.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__maxnshards_int
  doc: =, --max-nshards=   int     REQUIRED         Maximum number of distributed
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__blockprefix_string
  doc: "=, --block-prefix=  string  \"block\"          Block files are\n(prefix).(block_id).m4\n\
    (prepared previously)"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_outidsfn_string_given
  doc: "=, --out-ids-fn=    string  \"all_shard_ids\"  If given, this lists the\n\
    shard_ids, 0 thru N-1,\ncorresponding to the\nshard-prefix.block_id files.\n"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_jobs
  doc: -s=, --shard-prefix=  string  "shard"          The output. Shard files are
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
- ipa-shard-blocks-m4
