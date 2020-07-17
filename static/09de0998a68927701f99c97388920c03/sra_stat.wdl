version 1.0

task SraStat.2 {
  input {
    Boolean? xml
    String? start
    String? stop
    Boolean? print_load_metadata
    Boolean? quick
    String? member_stats
    Boolean? archive_info
    Boolean? statistics
    String? alignment
    Boolean? show_progress
    File? ngc
    String? xml_log
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String table
  }
  command <<<
    sra-stat.2 \
      ~{table} \
      ~{true="--xml" false="" xml} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{true="--meta" false="" print_load_metadata} \
      ~{true="--quick" false="" quick} \
      ~{if defined(member_stats) then ("--member-stats " +  '"' + member_stats + '"') else ""} \
      ~{true="--archive-info" false="" archive_info} \
      ~{true="--statistics" false="" statistics} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{true="--show_progress" false="" show_progress} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    xml: "output as XML, default is text "
    start: "starting spot id, default is 1 "
    stop: "ending spot id, default is max "
    print_load_metadata: "print load metadata "
    quick: "quick mode: get statistics from metadata; do  not scan the table "
    member_stats: "print member stats, default is on "
    archive_info: "output archive info, default is off "
    statistics: "calculate READ_LEN average and standard  deviation "
    alignment: "print alignment info, default is on "
    show_progress: "show the percentage of completion "
    ngc: "path to ngc file "
    xml_log: "produce XML-formatted log file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    table: ""
  }
}