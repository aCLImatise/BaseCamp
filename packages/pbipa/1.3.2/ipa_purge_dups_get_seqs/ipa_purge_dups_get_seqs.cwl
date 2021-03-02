class: CommandLineTool
id: ipa_purge_dups_get_seqs.cwl
inputs:
- id: in_bool_only_remove
  doc: BOOL     only remove sequences at the ends of a contig [FALSE]
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_bool_split_contigs
  doc: BOOL     split contigs [FALSE]
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_str_prefix_output
  doc: STR      prefix of output files [NULL]
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_bool_keep_contigs
  doc: BOOL     keep high coverage contigs in the primary contig set [FALSE]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_bool_add_prefix
  doc: BOOL     do not add prefix to haplotigs [FALSE]
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_int_maximum_gap
  doc: INT      maximum gap size between duplications [10k]
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_int_minimum_primary
  doc: INT      minimum primary contig length [10k]
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_int_minimum_ratio
  doc: INT      minimum ratio of remaining primary contig length to the original contig
    length [0.05]
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_dups_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- ipa_purge_dups_get_seqs
