version 1.0

task BamStats.pl {
  input {
    Boolean? i_file_path
    Boolean? file_path_output
    Boolean? plots
    Boolean? threads
    Boolean? man
    Boolean? version
    File? file_dot_dot_dot
  }
  command <<<
    bam_stats.pl \
      ~{file_dot_dot_dot} \
      ~{true="-input" false="" i_file_path} \
      ~{true="-output" false="" file_path_output} \
      ~{true="-plots" false="" plots} \
      ~{true="-threads" false="" threads} \
      ~{true="-man" false="" man} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    i_file_path: "-i   File path to read in."
    file_path_output: "-o   File path to output. Defaults to STDOUT."
    plots: "-p   Folder to contain quality score plots. - not available with '-t'"
    threads: "Use multiple threads to process the input - warning the complete file is read for each thread."
    man: "Prints the manual page and exits."
    version: "Prints the version number and exits."
    file_dot_dot_dot: ""
  }
}