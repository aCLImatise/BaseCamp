class: CommandLineTool
id: chimera.cwl
inputs:
- id: in_allow_percent_error
  doc: allow 'erate' percent error (default is AS_OVL_ERROR_RATE environment variable)
  type: string?
  inputBinding:
    prefix: -e
- id: in_allow__errors
  doc: allow 'elimit' errors
  type: string?
  inputBinding:
    prefix: -E
- id: in_min_in_nie_pair
  doc: trim if at least n pairs of innie frags detect chimer
  type: string?
  inputBinding:
    prefix: -mininniepair
- id: in_min_overhanging
  doc: trim if at least n frags detect chimer
  type: string?
  inputBinding:
    prefix: -minoverhanging
- id: in_use_mates
  doc: trim if the read is not spanned by overlaps, and not spanned by mates
  type: boolean?
  inputBinding:
    prefix: -usemates
- id: in_write_logging_summary
  doc: write a logging and a summary of fixes to files with prefix P
  type: string?
  inputBinding:
    prefix: -o
- id: in_log_update_store
  doc: compute and log, but don't update the store
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_limit_processing_end
  doc: limit processing to only reads from bgn to end (inclusive)
  type: string?
  inputBinding:
    prefix: -t
- id: in_sub_read_log
  doc: write (large) subread logging file
  type: boolean?
  inputBinding:
    prefix: -subreadlog
- id: in_var_9
  doc: ''
  type: string?
  inputBinding:
    prefix: -O
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -G
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chimera
