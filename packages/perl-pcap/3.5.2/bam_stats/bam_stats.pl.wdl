version 1.0

task BamStatspl {
  input {
    Boolean? i_file_path
    File? file_path_output
    Boolean? plots
    Boolean? threads
    Boolean? man
    Boolean? version
    File? file_dot_dot_dot
  }
  command <<<
    bam_stats_pl \
      ~{file_dot_dot_dot} \
      ~{if (i_file_path) then "-input" else ""} \
      ~{if (file_path_output) then "-output" else ""} \
      ~{if (plots) then "-plots" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    i_file_path: "-i   File path to read in."
    file_path_output: "-o   File path to output. Defaults to STDOUT."
    plots: "-p   Folder to contain quality score plots.\\n- not available with '-t'"
    threads: "Use multiple threads to process the input\\n- warning the complete file is read for each thread."
    man: "-m   Full documentation."
    version: "Prints the version number."
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_path_output = "${in_file_path_output}"
  }
}