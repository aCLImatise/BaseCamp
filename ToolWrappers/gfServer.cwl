class: CommandLineTool
id: gfServer.cwl
inputs:
- id: in_tile_size
  doc: "size of n-mers to index.  Default is 11 for nucleotides, 4 for\nproteins (or\
    \ translated nucleotides)."
  type: long
  inputBinding:
    prefix: -tileSize
- id: in_step_size
  doc: spacing between tiles. Default is tileSize.
  type: string
  inputBinding:
    prefix: -stepSize
- id: in_min_match
  doc: "Number of n-mer matches that trigger detailed alignment\nDefault is 2 for\
    \ nucleotides, 3 for protiens."
  type: long
  inputBinding:
    prefix: -minMatch
- id: in_max_gap
  doc: "Number of insertions or deletions allowed between n-mers.\nDefault is 2 for\
    \ nucleotides, 0 for protiens."
  type: long
  inputBinding:
    prefix: -maxGap
- id: in_trans
  doc: "Translate database to protein in 6 frames.  Note: it is best\nto run this\
    \ on RepeatMasked data in this case."
  type: boolean
  inputBinding:
    prefix: -trans
- id: in_log
  doc: keep a log file that records server requests.
  type: File
  inputBinding:
    prefix: -log
- id: in_seq_log
  doc: Include sequences in log file (not logged with -syslog)
  type: boolean
  inputBinding:
    prefix: -seqLog
- id: in_syslog
  doc: Log to syslog
  type: boolean
  inputBinding:
    prefix: -syslog
- id: in_log_facility
  doc: log to the specified syslog facility - default local0.
  type: long
  inputBinding:
    prefix: -logFacility
- id: in_mask
  doc: Use masking from nib file.
  type: boolean
  inputBinding:
    prefix: -mask
- id: in_rep_match
  doc: "Number of occurrences of a tile (nmer) that trigger repeat masking the tile.\n\
    Default is 1024."
  type: long
  inputBinding:
    prefix: -repMatch
- id: in_max_dna_hits
  doc: "Maximum number of hits for a dna query that are sent from the server.\nDefault\
    \ is 100."
  type: long
  inputBinding:
    prefix: -maxDnaHits
- id: in_max_trans_hits
  doc: "Maximum number of hits for a translated query that are sent from the server.\n\
    Default is 200."
  type: long
  inputBinding:
    prefix: -maxTransHits
- id: in_max_nt_size
  doc: "Maximum size of untranslated DNA query sequence\nDefault is 40000"
  type: long
  inputBinding:
    prefix: -maxNtSize
- id: in_max_as_size
  doc: "Maximum size of protein or translated DNA queries\nDefault is 8000"
  type: long
  inputBinding:
    prefix: -maxAsSize
- id: in_can_stop
  doc: "set then a quit message will actually take down the\nserver\n"
  type: string
  inputBinding:
    prefix: -canStop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gfServer
