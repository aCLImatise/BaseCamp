class: CommandLineTool
id: scanwise.cwl
inputs:
- id: in_db_size
  doc: '[number] effective db size for Evalue calculation [300000]'
  type: boolean
  inputBinding:
    prefix: -dbsize
- id: in_scan_host
  doc: '[localhost] host name for wise server'
  type: boolean
  inputBinding:
    prefix: -scan_host
- id: in_scan_port
  doc: '[4050]      port for wise server'
  type: boolean
  inputBinding:
    prefix: -scan_port
- id: in_multiserver
  doc: Filename for multiple servers, <host> <port> format
  type: File
  inputBinding:
    prefix: -multiserver
- id: in_seq_db
  doc: For local cases, sequence database fasta file
  type: boolean
  inputBinding:
    prefix: -seqdb
- id: in_seq_dbm_at
  doc: For local cases, comparison matrix to use
  type: boolean
  inputBinding:
    prefix: -seqdbmat
- id: in_hsps_can_impl
  doc: '[vanilla/threaded/twohit] implementation to use if compliled for runtime'
  type: boolean
  inputBinding:
    prefix: -hspscan_impl
- id: in_hsps_can_max_res
  doc: '[100] maximum results returned by scan'
  type: boolean
  inputBinding:
    prefix: -hspscan_maxres
- id: in_hsps_can_numb
  doc: '[1000] word count to numb word (for low complexity)'
  type: boolean
  inputBinding:
    prefix: -hspscan_numb
- id: in_hsps_can_word_depth
  doc: '[2] maximum offset from word - [0,1,2]'
  type: boolean
  inputBinding:
    prefix: -hspscan_worddepth
- id: in_hsps_can_min_word
  doc: '[14] minimum word score'
  type: boolean
  inputBinding:
    prefix: -hspscan_minword
- id: in_hsps_can_minh_sp
  doc: '[22] minimum hsp score'
  type: boolean
  inputBinding:
    prefix: -hspscan_minhsp
- id: in_hsps_can_link_width
  doc: '[30] max width (gap) of scored HSP chain'
  type: boolean
  inputBinding:
    prefix: -hspscan_link_width
- id: in_hsps_can_link_length
  doc: '[150] max length of scored HSP chain'
  type: boolean
  inputBinding:
    prefix: -hspscan_link_length
- id: in_hsps_can_verbosity
  doc: '[0] verbosity level of server, if server is trace compiled'
  type: boolean
  inputBinding:
    prefix: -hspscan_verbosity
- id: in_hsps_can_low_numb
  doc: '[0] low complexity numb level, 0 means no special low complexity scores'
  type: boolean
  inputBinding:
    prefix: -hspscan_lownumb
- id: in_hsps_can_avg_ext
  doc: '[-6] average extension minimum in hsp extension'
  type: boolean
  inputBinding:
    prefix: -hspscan_avgext
- id: in_hsp_convert
  doc: '[ungapped/fulldp/heuristic] Conversion type - heuristic default'
  type: boolean
  inputBinding:
    prefix: -hspconvert
- id: in_hsp_thread
  doc: multi-thread HSP conversion
  type: boolean
  inputBinding:
    prefix: -hspthread
- id: in_hsp_thread_no
  doc: number of HSP threads (4 default)
  type: boolean
  inputBinding:
    prefix: -hspthreadno
- id: in_hsp_two_hit_width
  doc: '[no] width around each HSP to consider'
  type: boolean
  inputBinding:
    prefix: -hsp2hit_width
- id: in_hsp_two_hit_length
  doc: '[no] length around each HSP to consider'
  type: boolean
  inputBinding:
    prefix: -hsp2hit_length
- id: in_hsp_two_hit_sub_aln
  doc: '[no] number of HSP subalignments to consider (disabled)'
  type: boolean
  inputBinding:
    prefix: -hsp2hit_subaln
- id: in_hsp_two_hit_hit_aln
  doc: '[no] number of hitpairs to assess'
  type: boolean
  inputBinding:
    prefix: -hsp2hit_hitaln
- id: in_hsp_two_hit_best_perc
  doc: '[10] percentage off best score taken in best-in-search truncation'
  type: boolean
  inputBinding:
    prefix: -hsp2hit_best_perc
- id: in_hit_output
  doc: '[pseudoblast/xml/tab] pseudoblast by default'
  type: boolean
  inputBinding:
    prefix: -hitoutput
- id: in_hit_help
  doc: more detailed help on hitlist formats
  type: boolean
  inputBinding:
    prefix: -hithelp
- id: in_dy_mem
  doc: memory style [default/linear/explicit]
  type: boolean
  inputBinding:
    prefix: -dymem
- id: in_kbyte
  doc: memory amount to use [4000]
  type: boolean
  inputBinding:
    prefix: -kbyte
- id: in_dy_debug
  doc: drop into dynamite dp matrix debugger
  type: boolean
  inputBinding:
    prefix: -dydebug
- id: in_pal_debug
  doc: print PackAln after debugger run if used
  type: boolean
  inputBinding:
    prefix: -paldebug
- id: in_version
  doc: show version and compile info
  type: boolean
  inputBinding:
    prefix: -version
- id: in_silent
  doc: No messages    on stderr
  type: boolean
  inputBinding:
    prefix: -silent
- id: in_quiet
  doc: No report/info on stderr
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_error_off_std
  doc: warning messages to stderr
  type: string
  inputBinding:
    prefix: -erroroffstd
- id: in_error_log
  doc: '[file] Log warning messages to file'
  type: boolean
  inputBinding:
    prefix: -errorlog
- id: in_error_style
  doc: '[server/program] style of error reporting (default program)'
  type: boolean
  inputBinding:
    prefix: -errorstyle
- id: in_seq_load_tile
  doc: tiling skip of load (default 1)
  type: boolean
  inputBinding:
    prefix: -seqloadtile
- id: in_seq_load_report
  doc: report (using info) at what stagger rating (default none)
  type: long
  inputBinding:
    prefix: -seqloadreport
- id: in_seq_load_trunc
  doc: <number>  truncate load after this number of sequeneces (useful for debugging)
  type: boolean
  inputBinding:
    prefix: -seqloadtrunc
- id: in_seq_load_start
  doc: <number>  start position in database for seq load
  type: boolean
  inputBinding:
    prefix: -seqloadstart
- id: in_seq_load_end
  doc: <number>  end position in database for seq load
  type: boolean
  inputBinding:
    prefix: -seqloadend
- id: in_pi_type
  doc: '[array/hash/stream/shadow] - default array'
  type: boolean
  inputBinding:
    prefix: -pitype
- id: in_pi_way_post
  doc: '[number]  - waypost for streamed cases, default 3'
  type: boolean
  inputBinding:
    prefix: -piwaypost
- id: in_pi_shadow
  doc: '[number]   - shadow length for shadow cases, default 15'
  type: boolean
  inputBinding:
    prefix: -pishadow
- id: in_pi_shadow_err
  doc: '[number] - errors per 100 identities tolerated, 3'
  type: boolean
  inputBinding:
    prefix: -pishadow_err
- id: in_pi_seq_max
  doc: '- indexes can assumme maximum length of seq'
  type: boolean
  inputBinding:
    prefix: -piseqmax
- id: in_pi_seq_max_len
  doc: '[number] - assummed max sequnce length, default 1000'
  type: boolean
  inputBinding:
    prefix: -piseqmax_len
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scanwise
