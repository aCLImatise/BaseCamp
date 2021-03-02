version 1.0

task PlotMetageneAnalysisForTheWholeRegions {
  input {
    File? input_file_txt
    String? prefix_output_files
    Int? group
    Int? replicate
    File? format
    Int? bins
    Int? ymax
    Int? ymin
    String? mode
    String? xlabel_loc
  }
  command <<<
    PlotMetageneAnalysisForTheWholeRegions \
      ~{if defined(input_file_txt) then ("--input " +  '"' + input_file_txt + '"') else ""} \
      ~{if defined(prefix_output_files) then ("--output " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(replicate) then ("--replicate " +  '"' + replicate + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(ymax) then ("--ymax " +  '"' + ymax + '"') else ""} \
      ~{if defined(ymin) then ("--ymin " +  '"' + ymin + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(xlabel_loc) then ("--xlabel-loc " +  '"' + xlabel_loc + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_file_txt: "Input file in txt format.And the files have N columns,\\nmeaning N samples and have total bins rows.\\n[FiveUTR+CDS+ThreeUTR]"
    prefix_output_files: "Prefix of output files.[required]"
    group: "Group name of each group separated by comma. e.g. 'si-\\ncontrol,si-eIF3e'"
    replicate: "Replicate name of each group separated by comma. e.g.\\n'si_3e_1_80S,si_3e_2_80S__si_cttl_1_80S,si_ctrl_2_80S'"
    format: "Output file format,'pdf','png' or 'jpg'. default=pdf"
    bins: "Bins to scale the transcript length.e.g.'15,90,60'.\\nbins must be separated by comma, namely\\n'5UTRBins,CDSBins,3UTRBins'. default=15,90,60"
    ymax: "The max of ylim. default=none"
    ymin: "The min of ylim. default=none"
    mode: "plot all samples or just mean samples [all or mean].If\\nchoose 'all',output all samples as well as mean\\nsamples, else just mean samples.default=all"
    xlabel_loc: "Location of xlabel. Used to control the yaxis location\\nof xlabel. default=none\\n"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}