version 1.0

task Chimera {
  input {
    String? allow_percent_error
    String? allow__errors
    String? min_in_nie_pair
    String? min_overhanging
    Boolean? use_mates
    String? write_logging_summary
    Boolean? compute_log_update
    String? limit_processing_reads
    Boolean? sub_read_log
    String? var_9
    String? g
    String? opts
  }
  command <<<
    chimera \
      ~{opts} \
      ~{if defined(allow_percent_error) then ("-e " +  '"' + allow_percent_error + '"') else ""} \
      ~{if defined(allow__errors) then ("-E " +  '"' + allow__errors + '"') else ""} \
      ~{if defined(min_in_nie_pair) then ("-mininniepair " +  '"' + min_in_nie_pair + '"') else ""} \
      ~{if defined(min_overhanging) then ("-minoverhanging " +  '"' + min_overhanging + '"') else ""} \
      ~{if (use_mates) then "-usemates" else ""} \
      ~{if defined(write_logging_summary) then ("-o " +  '"' + write_logging_summary + '"') else ""} \
      ~{if (compute_log_update) then "-n" else ""} \
      ~{if defined(limit_processing_reads) then ("-t " +  '"' + limit_processing_reads + '"') else ""} \
      ~{if (sub_read_log) then "-subreadlog" else ""} \
      ~{if defined(var_9) then ("-O " +  '"' + var_9 + '"') else ""} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    allow_percent_error: "allow 'erate' percent error (default is AS_OVL_ERROR_RATE environment variable)"
    allow__errors: "allow 'elimit' errors"
    min_in_nie_pair: "trim if at least n pairs of innie frags detect chimer"
    min_overhanging: "trim if at least n frags detect chimer"
    use_mates: "trim if the read is not spanned by overlaps, and not spanned by mates"
    write_logging_summary: "write a logging and a summary of fixes to files with prefix P"
    compute_log_update: "compute and log, but don't update the store"
    limit_processing_reads: "limit processing to only reads from bgn to end (inclusive)"
    sub_read_log: "write (large) subread logging file"
    var_9: ""
    g: ""
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}