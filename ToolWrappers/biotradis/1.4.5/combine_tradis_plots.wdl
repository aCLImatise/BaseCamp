version 1.0

task CombineTradisPlots {
  input {
    Boolean? plotfile_file_plots
    Directory? outputdir_name_combined
  }
  command <<<
    combine_tradis_plots \
      ~{if (plotfile_file_plots) then "-p" else ""} \
      ~{if (outputdir_name_combined) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    plotfile_file_plots: "|plotfile   : file with plots to be combined"
    outputdir_name_combined: "|output_dir : name of directory for output (default: combined)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outputdir_name_combined = "${in_outputdir_name_combined}"
  }
}