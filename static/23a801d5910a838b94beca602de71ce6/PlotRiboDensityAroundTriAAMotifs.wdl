version 1.0

task PlotRiboDensityAroundTriAAMotifs {
  input {
    File? input_file_pddataframe
    String? output_files
    Int? group
    Int? replicate
    Int? ymax
    Int? ymin
    String? mode
  }
  command <<<
    PlotRiboDensityAroundTriAAMotifs \
      ~{if defined(input_file_pddataframe) then ("--input " +  '"' + input_file_pddataframe + '"') else ""} \
      ~{if defined(output_files) then ("--output " +  '"' + output_files + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(replicate) then ("--replicate " +  '"' + replicate + '"') else ""} \
      ~{if defined(ymax) then ("--ymax " +  '"' + ymax + '"') else ""} \
      ~{if defined(ymin) then ("--ymin " +  '"' + ymin + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_file_pddataframe: "Input file in dataframe format (pd.DataFrame)."
    output_files: "Output files"
    group: "Group name of each group separated by comma. e.g. 'si-\\ncontrol,si-eIF3e'"
    replicate: "Replicate name of each group separated by comma. e.g.\\n'si_3e_1_80S,si_3e_2_80S__si_cttl_1_80S,si_ctrl_2_80S'"
    ymax: "The max of ylim. default=none"
    ymin: "The min of ylim. default=none"
    mode: "Control the mode for plot. if '--mode single', return\\nthe plot of each samples;else return the mean plot.\\ndefault=mean.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}