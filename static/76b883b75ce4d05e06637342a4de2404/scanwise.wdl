version 1.0

task Scanwise {
  input {
    File? multiserver
    Boolean? seq_db
    Boolean? seq_dbm_at
    Boolean? hsps_can_impl
    Boolean? hsps_can_max_res
    Boolean? hsps_can_numb
    Boolean? hsps_can_word_depth
    Boolean? hsps_can_min_word
    Boolean? hsps_can_minh_sp
    Boolean? hsps_can_link_width
    Boolean? hsps_can_link_length
    Boolean? hsps_can_verbosity
    Boolean? hsps_can_low_numb
    Boolean? hsps_can_avg_ext
    Boolean? hsp_convert
    Boolean? hsp_thread
    Boolean? hsp_thread_no
    Boolean? hit_output
    Boolean? hit_help
    Boolean? dy_debug
    Boolean? pal_debug
    Boolean? version
    Boolean? silent
    Boolean? quiet
    String? error_off_std
    Boolean? error_log
    Boolean? error_style
    Boolean? pi_type
    Boolean? pi_way_post
    Boolean? pi_shadow
    Boolean? pi_shadow_err
    Boolean? pi_seq_max
    Boolean? pi_seq_max_len
  }
  command <<<
    scanwise \
      ~{if defined(multiserver) then ("-multiserver " +  '"' + multiserver + '"') else ""} \
      ~{true="-seqdb" false="" seq_db} \
      ~{true="-seqdbmat" false="" seq_dbm_at} \
      ~{true="-hspscan_impl" false="" hsps_can_impl} \
      ~{true="-hspscan_maxres" false="" hsps_can_max_res} \
      ~{true="-hspscan_numb" false="" hsps_can_numb} \
      ~{true="-hspscan_worddepth" false="" hsps_can_word_depth} \
      ~{true="-hspscan_minword" false="" hsps_can_min_word} \
      ~{true="-hspscan_minhsp" false="" hsps_can_minh_sp} \
      ~{true="-hspscan_link_width" false="" hsps_can_link_width} \
      ~{true="-hspscan_link_length" false="" hsps_can_link_length} \
      ~{true="-hspscan_verbosity" false="" hsps_can_verbosity} \
      ~{true="-hspscan_lownumb" false="" hsps_can_low_numb} \
      ~{true="-hspscan_avgext" false="" hsps_can_avg_ext} \
      ~{true="-hspconvert" false="" hsp_convert} \
      ~{true="-hspthread" false="" hsp_thread} \
      ~{true="-hspthreadno" false="" hsp_thread_no} \
      ~{true="-hitoutput" false="" hit_output} \
      ~{true="-hithelp" false="" hit_help} \
      ~{true="-dydebug" false="" dy_debug} \
      ~{true="-paldebug" false="" pal_debug} \
      ~{true="-version" false="" version} \
      ~{true="-silent" false="" silent} \
      ~{true="-quiet" false="" quiet} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{true="-errorlog" false="" error_log} \
      ~{true="-errorstyle" false="" error_style} \
      ~{true="-pitype" false="" pi_type} \
      ~{true="-piwaypost" false="" pi_way_post} \
      ~{true="-pishadow" false="" pi_shadow} \
      ~{true="-pishadow_err" false="" pi_shadow_err} \
      ~{true="-piseqmax" false="" pi_seq_max} \
      ~{true="-piseqmax_len" false="" pi_seq_max_len}
  >>>
  parameter_meta {
    multiserver: "Filename for multiple servers, <host> <port> format"
    seq_db: "For local cases, sequence database fasta file"
    seq_dbm_at: "For local cases, comparison matrix to use"
    hsps_can_impl: "[vanilla/threaded/twohit] implementation to use if compliled for runtime"
    hsps_can_max_res: "[100] maximum results returned by scan"
    hsps_can_numb: "[1000] word count to numb word (for low complexity)"
    hsps_can_word_depth: "[2] maximum offset from word - [0,1,2]"
    hsps_can_min_word: "[14] minimum word score"
    hsps_can_minh_sp: "[22] minimum hsp score"
    hsps_can_link_width: "[30] max width (gap) of scored HSP chain"
    hsps_can_link_length: "[150] max length of scored HSP chain"
    hsps_can_verbosity: "[0] verbosity level of server, if server is trace compiled"
    hsps_can_low_numb: "[0] low complexity numb level, 0 means no special low complexity scores"
    hsps_can_avg_ext: "[-6] average extension minimum in hsp extension"
    hsp_convert: "[ungapped/fulldp/heuristic] Conversion type - heuristic default"
    hsp_thread: "multi-thread HSP conversion"
    hsp_thread_no: "number of HSP threads (4 default)"
    hit_output: "[pseudoblast/xml/tab] pseudoblast by default"
    hit_help: "more detailed help on hitlist formats"
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
    pi_type: "[array/hash/stream/shadow] - default array"
    pi_way_post: "[number]  - waypost for streamed cases, default 3"
    pi_shadow: "[number]   - shadow length for shadow cases, default 15"
    pi_shadow_err: "[number] - errors per 100 identities tolerated, 3"
    pi_seq_max: "- indexes can assumme maximum length of seq"
    pi_seq_max_len: "[number] - assummed max sequnce length, default 1000"
  }
}