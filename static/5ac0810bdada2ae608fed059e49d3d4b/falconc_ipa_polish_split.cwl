class: CommandLineTool
id: falconc_ipa_polish_split.cwl
inputs:
- id: in_help_syntax
  doc: "advanced:\nprepend,plurals,.."
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__maxnshards_int
  doc: "=, --max-nshards=           int     REQUIRED                     Maximum number\n\
    of distributed\njobs"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__shardprefix_string
  doc: "=, --shard-prefix=          string  \"shard\"                      The output.\n\
    Shard files are\n(prefix).(shard_id).block_ids"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__blockprefix_string
  doc: "=, --block-prefix=          string  \"block\"                      Block files\
    \ are\n(prefix).(block_id).reads\n(prepared\npreviously)"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in__string_columns
  doc: '=, --in-read-to-contig-fn=  string  "sorted.read_to_contig.csv"  2-columns:
    read#'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_mb_per_block
  doc: "=               int     REQUIRED                     Try to target\nmegabases\
    \ total\nin all contigs\nin any block"
  type: boolean?
  inputBinding:
    prefix: --mb-per-block
- id: in_blacklist_fn
  doc: "=               string  \"\"                           Specifies a file\n\
    with a list of\ncontigs to skip\nfor polishing.\n"
  type: boolean?
  inputBinding:
    prefix: --blacklist-fn
- id: in_cli_gen_erated
  doc: help
  type: string
  inputBinding:
    position: 0
- id: in_ctg_name
  doc: -o=, --out-ids-fn=            string  "all_shard_ids"              If given,
  type: string
  inputBinding:
    position: 1
- id: in_corresponding
  doc: to the
  type: string
  inputBinding:
    position: 0
- id: in_shard_prefix_dot_block_id
  doc: files.
  type: string
  inputBinding:
    position: 1
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
- ipa-polish-split
