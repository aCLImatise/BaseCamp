class: CommandLineTool
id: scanwise.cwl
inputs:
- id: multiserver
  doc: Filename for multiple servers, <host> <port> format
  type: File
  inputBinding:
    prefix: -multiserver
- id: seq_db
  doc: For local cases, sequence database fasta file
  type: boolean
  inputBinding:
    prefix: -seqdb
- id: seq_dbm_at
  doc: For local cases, comparison matrix to use
  type: boolean
  inputBinding:
    prefix: -seqdbmat
- id: hsps_can_impl
  doc: '[vanilla/threaded/twohit] implementation to use if compliled for runtime'
  type: boolean
  inputBinding:
    prefix: -hspscan_impl
- id: hsps_can_max_res
  doc: '[100] maximum results returned by scan'
  type: boolean
  inputBinding:
    prefix: -hspscan_maxres
- id: hsps_can_numb
  doc: '[1000] word count to numb word (for low complexity)'
  type: boolean
  inputBinding:
    prefix: -hspscan_numb
- id: hsps_can_word_depth
  doc: '[2] maximum offset from word - [0,1,2]'
  type: boolean
  inputBinding:
    prefix: -hspscan_worddepth
- id: hsps_can_min_word
  doc: '[14] minimum word score'
  type: boolean
  inputBinding:
    prefix: -hspscan_minword
- id: hsps_can_minh_sp
  doc: '[22] minimum hsp score'
  type: boolean
  inputBinding:
    prefix: -hspscan_minhsp
- id: hsps_can_link_width
  doc: '[30] max width (gap) of scored HSP chain'
  type: boolean
  inputBinding:
    prefix: -hspscan_link_width
- id: hsps_can_link_length
  doc: '[150] max length of scored HSP chain'
  type: boolean
  inputBinding:
    prefix: -hspscan_link_length
- id: hsps_can_verbosity
  doc: '[0] verbosity level of server, if server is trace compiled'
  type: boolean
  inputBinding:
    prefix: -hspscan_verbosity
- id: hsps_can_low_numb
  doc: '[0] low complexity numb level, 0 means no special low complexity scores'
  type: boolean
  inputBinding:
    prefix: -hspscan_lownumb
- id: hsps_can_avg_ext
  doc: '[-6] average extension minimum in hsp extension'
  type: boolean
  inputBinding:
    prefix: -hspscan_avgext
- id: hsp_convert
  doc: '[ungapped/fulldp/heuristic] Conversion type - heuristic default'
  type: boolean
  inputBinding:
    prefix: -hspconvert
- id: hsp_thread
  doc: multi-thread HSP conversion
  type: boolean
  inputBinding:
    prefix: -hspthread
- id: hsp_thread_no
  doc: number of HSP threads (4 default)
  type: boolean
  inputBinding:
    prefix: -hspthreadno
- id: hit_output
  doc: '[pseudoblast/xml/tab] pseudoblast by default'
  type: boolean
  inputBinding:
    prefix: -hitoutput
- id: hit_help
  doc: more detailed help on hitlist formats
  type: boolean
  inputBinding:
    prefix: -hithelp
- id: dy_debug
  doc: drop into dynamite dp matrix debugger
  type: boolean
  inputBinding:
    prefix: -dydebug
- id: pal_debug
  doc: print PackAln after debugger run if used
  type: boolean
  inputBinding:
    prefix: -paldebug
- id: version
  doc: show version and compile info
  type: boolean
  inputBinding:
    prefix: -version
- id: silent
  doc: No messages    on stderr
  type: boolean
  inputBinding:
    prefix: -silent
- id: quiet
  doc: No report/info on stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: error_off_std
  doc: warning messages to stderr
  type: string
  inputBinding:
    prefix: -erroroffstd
- id: error_log
  doc: '[file] Log warning messages to file'
  type: boolean
  inputBinding:
    prefix: -errorlog
- id: error_style
  doc: '[server/program] style of error reporting (default program)'
  type: boolean
  inputBinding:
    prefix: -errorstyle
- id: pi_type
  doc: '[array/hash/stream/shadow] - default array'
  type: boolean
  inputBinding:
    prefix: -pitype
- id: pi_way_post
  doc: '[number]  - waypost for streamed cases, default 3'
  type: boolean
  inputBinding:
    prefix: -piwaypost
- id: pi_shadow
  doc: '[number]   - shadow length for shadow cases, default 15'
  type: boolean
  inputBinding:
    prefix: -pishadow
- id: pi_shadow_err
  doc: '[number] - errors per 100 identities tolerated, 3'
  type: boolean
  inputBinding:
    prefix: -pishadow_err
- id: pi_seq_max
  doc: '- indexes can assumme maximum length of seq'
  type: boolean
  inputBinding:
    prefix: -piseqmax
- id: pi_seq_max_len
  doc: '[number] - assummed max sequnce length, default 1000'
  type: boolean
  inputBinding:
    prefix: -piseqmax_len
outputs: []
cwlVersion: v1.1
baseCommand:
- scanwise
