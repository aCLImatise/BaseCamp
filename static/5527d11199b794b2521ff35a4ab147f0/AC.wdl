version 1.0

task AC {
  input {
    Boolean? show_ac_levels
    Boolean? verbose_mode_more
    Boolean? display_version_number
    Boolean? force_overwrite_output
    Int? level_compression_lazy
    String? threshold_frequency_discard
    Boolean? it_creates_file
    File? reference_file_loaded
  }
  command <<<
    AC \
      ~{if (show_ac_levels) then "-s" else ""} \
      ~{if (verbose_mode_more) then "-v" else ""} \
      ~{if (display_version_number) then "-V" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if defined(level_compression_lazy) then ("-l " +  '"' + level_compression_lazy + '"') else ""} \
      ~{if defined(threshold_frequency_discard) then ("-t " +  '"' + threshold_frequency_discard + '"') else ""} \
      ~{if (it_creates_file) then "-e" else ""} \
      ~{if defined(reference_file_loaded) then ("-r " +  '"' + reference_file_loaded + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_ac_levels: "show AC compression levels,"
    verbose_mode_more: "verbose mode (more information),"
    display_version_number: "display version number,"
    force_overwrite_output: "force overwrite of output,"
    level_compression_lazy: "level of compression [1;7] (lazy -tm setup),"
    threshold_frequency_discard: "threshold frequency to discard from alphabet,"
    it_creates_file: "it creates a file with the extension \\\".iae\\\"\\nwith the respective information content."
    reference_file_loaded: "reference file (\\\"-rm\\\" are loaded here),"
  }
  output {
    File out_stdout = stdout()
  }
}