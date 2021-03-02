version 1.0

task Scanwise {
  input {
    Boolean? db_size
    Boolean? scan_host
    Boolean? scan_port
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
    Boolean? hsp_two_hit_width
    Boolean? hsp_two_hit_length
    Boolean? hsp_two_hit_sub_aln
    Boolean? hsp_two_hit_hit_aln
    Boolean? hsp_two_hit_best_perc
    Boolean? hit_output
    Boolean? hit_help
    Boolean? dy_mem
    Boolean? kbyte
    Boolean? dy_debug
    Boolean? pal_debug
    Boolean? version
    Boolean? silent
    Boolean? quiet
    String? error_off_std
    Boolean? error_log
    Boolean? error_style
    Boolean? seq_load_tile
    Int? seq_load_report
    Boolean? seq_load_trunc
    Boolean? seq_load_start
    Boolean? seq_load_end
    Boolean? pi_type
    Boolean? pi_way_post
    Boolean? pi_shadow
    Boolean? pi_shadow_err
    Boolean? pi_seq_max
    Boolean? pi_seq_max_len
  }
  command <<<
    scanwise \
      ~{if (db_size) then "-dbsize" else ""} \
      ~{if (scan_host) then "-scan_host" else ""} \
      ~{if (scan_port) then "-scan_port" else ""} \
      ~{if defined(multiserver) then ("-multiserver " +  '"' + multiserver + '"') else ""} \
      ~{if (seq_db) then "-seqdb" else ""} \
      ~{if (seq_dbm_at) then "-seqdbmat" else ""} \
      ~{if (hsps_can_impl) then "-hspscan_impl" else ""} \
      ~{if (hsps_can_max_res) then "-hspscan_maxres" else ""} \
      ~{if (hsps_can_numb) then "-hspscan_numb" else ""} \
      ~{if (hsps_can_word_depth) then "-hspscan_worddepth" else ""} \
      ~{if (hsps_can_min_word) then "-hspscan_minword" else ""} \
      ~{if (hsps_can_minh_sp) then "-hspscan_minhsp" else ""} \
      ~{if (hsps_can_link_width) then "-hspscan_link_width" else ""} \
      ~{if (hsps_can_link_length) then "-hspscan_link_length" else ""} \
      ~{if (hsps_can_verbosity) then "-hspscan_verbosity" else ""} \
      ~{if (hsps_can_low_numb) then "-hspscan_lownumb" else ""} \
      ~{if (hsps_can_avg_ext) then "-hspscan_avgext" else ""} \
      ~{if (hsp_convert) then "-hspconvert" else ""} \
      ~{if (hsp_thread) then "-hspthread" else ""} \
      ~{if (hsp_thread_no) then "-hspthreadno" else ""} \
      ~{if (hsp_two_hit_width) then "-hsp2hit_width" else ""} \
      ~{if (hsp_two_hit_length) then "-hsp2hit_length" else ""} \
      ~{if (hsp_two_hit_sub_aln) then "-hsp2hit_subaln" else ""} \
      ~{if (hsp_two_hit_hit_aln) then "-hsp2hit_hitaln" else ""} \
      ~{if (hsp_two_hit_best_perc) then "-hsp2hit_best_perc" else ""} \
      ~{if (hit_output) then "-hitoutput" else ""} \
      ~{if (hit_help) then "-hithelp" else ""} \
      ~{if (dy_mem) then "-dymem" else ""} \
      ~{if (kbyte) then "-kbyte" else ""} \
      ~{if (dy_debug) then "-dydebug" else ""} \
      ~{if (pal_debug) then "-paldebug" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{if (error_log) then "-errorlog" else ""} \
      ~{if (error_style) then "-errorstyle" else ""} \
      ~{if (seq_load_tile) then "-seqloadtile" else ""} \
      ~{if defined(seq_load_report) then ("-seqloadreport " +  '"' + seq_load_report + '"') else ""} \
      ~{if (seq_load_trunc) then "-seqloadtrunc" else ""} \
      ~{if (seq_load_start) then "-seqloadstart" else ""} \
      ~{if (seq_load_end) then "-seqloadend" else ""} \
      ~{if (pi_type) then "-pitype" else ""} \
      ~{if (pi_way_post) then "-piwaypost" else ""} \
      ~{if (pi_shadow) then "-pishadow" else ""} \
      ~{if (pi_shadow_err) then "-pishadow_err" else ""} \
      ~{if (pi_seq_max) then "-piseqmax" else ""} \
      ~{if (pi_seq_max_len) then "-piseqmax_len" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db_size: "[number] effective db size for Evalue calculation [300000]"
    scan_host: "[localhost] host name for wise server"
    scan_port: "[4050]      port for wise server"
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
    hsp_two_hit_width: "[no] width around each HSP to consider"
    hsp_two_hit_length: "[no] length around each HSP to consider"
    hsp_two_hit_sub_aln: "[no] number of HSP subalignments to consider (disabled)"
    hsp_two_hit_hit_aln: "[no] number of hitpairs to assess"
    hsp_two_hit_best_perc: "[10] percentage off best score taken in best-in-search truncation"
    hit_output: "[pseudoblast/xml/tab] pseudoblast by default"
    hit_help: "more detailed help on hitlist formats"
    dy_mem: "memory style [default/linear/explicit]"
    kbyte: "memory amount to use [4000]"
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
    seq_load_tile: "tiling skip of load (default 1)"
    seq_load_report: "report (using info) at what stagger rating (default none)"
    seq_load_trunc: "<number>  truncate load after this number of sequeneces (useful for debugging)"
    seq_load_start: "<number>  start position in database for seq load"
    seq_load_end: "<number>  end position in database for seq load"
    pi_type: "[array/hash/stream/shadow] - default array"
    pi_way_post: "[number]  - waypost for streamed cases, default 3"
    pi_shadow: "[number]   - shadow length for shadow cases, default 15"
    pi_shadow_err: "[number] - errors per 100 identities tolerated, 3"
    pi_seq_max: "- indexes can assumme maximum length of seq"
    pi_seq_max_len: "[number] - assummed max sequnce length, default 1000"
  }
  output {
    File out_stdout = stdout()
  }
}