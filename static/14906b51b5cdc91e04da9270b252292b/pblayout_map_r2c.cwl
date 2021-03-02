class: CommandLineTool
id: pblayout_map_r2c.cwl
inputs:
- id: in_alias_seq_db
  doc: STR    Specifies the SeqDB to use for id-to-name lookup for every read in the
    tiling path.
  type: boolean?
  inputBinding:
    prefix: --alias-seqdb
- id: in_max_diag_diff
  doc: "INT    Maximum diagonal difference for clustering of read-to-contig projections\
    \ during mapping.\n[100]"
  type: boolean?
  inputBinding:
    prefix: --max-diag-diff
- id: in_secondary_frac
  doc: "FLOAT  If two mappings overlap by more than this fraction, one will be marked\
    \ as secondary and\nremoved from output. [0.5]"
  type: boolean?
  inputBinding:
    prefix: --secondary-frac
- id: in_max_dist_from_edge
  doc: "INT    For each mapped region, all overlap coordinates within this distance\
    \ from the\nleft-/right-most query position will be recollected to find the optimal\
    \ mapping\nposition. This allows for some 'jitter' in mapping. [3]"
  type: boolean?
  inputBinding:
    prefix: --max-dist-from-edge
- id: in_log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_m_four
  doc: STR    Input M4.
  type: long
  inputBinding:
    position: 0
- id: in_tp
  doc: STR    Input Tiling path file.
  type: string
  inputBinding:
    position: 1
- id: in_ctg_lens
  doc: "STR    File containing contig lengths. First column is the contigh name, second\
    \ column contig\nlength, other columns are ignored. Can be space or tab separated.\
    \ The .fai files are\nacceptable."
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
- pblayout
- map-r2c
