version 1.0

task CombineTradisPlots {
  input {
    Boolean? plotfile_file_plots
    Directory? outputdir_name_directory
  }
  command <<<
    combine_tradis_plots \
      ~{if (plotfile_file_plots) then "-p" else ""} \
      ~{if (outputdir_name_directory) then "-o" else ""}
  >>>
  parameter_meta {
    plotfile_file_plots: "|plotfile   : file with plots to be combined"
    outputdir_name_directory: "|output_dir : name of directory for output (default: combined)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outputdir_name_directory = "${in_outputdir_name_directory}"
  }
}