version 1.0

task Assemblystats {
  input {
    Int? minimum_length_cutoff
    Boolean? print__output
    Boolean? print_tabdelimited_output
    Boolean? print_output_header
    Boolean? print_version_exit
    String stats
    String list_of_fast_a_slash_q_files
  }
  command <<<
    assembly_stats \
      ~{stats} \
      ~{list_of_fast_a_slash_q_files} \
      ~{if defined(minimum_length_cutoff) then ("-l " +  '"' + minimum_length_cutoff + '"') else ""} \
      ~{if (print__output) then "-s" else ""} \
      ~{if (print_tabdelimited_output) then "-t" else ""} \
      ~{if (print_output_header) then "-u" else ""} \
      ~{if (print_version_exit) then "-v" else ""}
  >>>
  parameter_meta {
    minimum_length_cutoff: "Minimum length cutoff for each sequence.\\nSequences shorter than the cutoff will be ignored [1]"
    print__output: "Print 'grep friendly' output"
    print_tabdelimited_output: "Print tab-delimited output"
    print_output_header: "Print tab-delimited output with no header line"
    print_version_exit: "Print version and exit\\n"
    stats: ""
    list_of_fast_a_slash_q_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}