version 1.0

task Srastat2108 {
  input {
    Boolean? xml
    Int? start
    Int? stop
    Boolean? print_load_metadata
    Boolean? quick
    String? member_stats
    Boolean? archive_info
    Boolean? statistics
    Boolean? show_progress
    File? ngc
    File? xml_log
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String deviation
    String quit_dot
    File file_dot
  }
  command <<<
    sra_stat_2_10_8 \
      ~{deviation} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (xml) then "--xml" else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if (print_load_metadata) then "--meta" else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if defined(member_stats) then ("--member-stats " +  '"' + member_stats + '"') else ""} \
      ~{if (archive_info) then "--archive-info" else ""} \
      ~{if (statistics) then "--statistics" else ""} \
      ~{if (show_progress) then "--show_progress" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(xml_log) then ("--xml-log " +  '"' + xml_log + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    xml: "output as XML, default is text"
    start: "starting spot id, default is 1"
    stop: "ending spot id, default is max"
    print_load_metadata: "print load metadata"
    quick: "quick mode: get statistics from metadata; do\\nnot scan the table"
    member_stats: "print member stats, default is on"
    archive_info: "output archive info, default is off"
    statistics: "calculate READ_LEN average and standard"
    show_progress: "show the percentage of completion"
    ngc: "path to ngc file"
    xml_log: "produce XML-formatted log file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    deviation: "-a|--alignment <on | off>        print alignment info, default is on "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "sra-stat.2.10.8 : 2.10.8"
  }
  output {
    File out_stdout = stdout()
  }
}