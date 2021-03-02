version 1.0

task NBICseqnormpl {
  input {
    Int? _fragment_size
    Float? subsample_percentage_default
    Int? bin_expected_observed
    Boolean? gc_bin
    Boolean? no_map_bin
    Boolean? bin_only
    File? fig
    String? title
    Directory? tmp
    String config_file
    String var_output
  }
  command <<<
    NBICseq_norm_pl \
      ~{config_file} \
      ~{var_output} \
      ~{if defined(_fragment_size) then ("-s " +  '"' + _fragment_size + '"') else ""} \
      ~{if defined(subsample_percentage_default) then ("-p " +  '"' + subsample_percentage_default + '"') else ""} \
      ~{if defined(bin_expected_observed) then ("-b " +  '"' + bin_expected_observed + '"') else ""} \
      ~{if (gc_bin) then "--gc_bin" else ""} \
      ~{if (no_map_bin) then "--NoMapBin" else ""} \
      ~{if (bin_only) then "--bin_only" else ""} \
      ~{if defined(fig) then ("--fig " +  '"' + fig + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _fragment_size: ": fragment size"
    subsample_percentage_default: ": a subsample percentage: default 0.0002."
    bin_expected_observed: ": bin the expected and observed as <int> bp bins; Default 100."
    gc_bin: ": if specified, report the GC-content in the bins"
    no_map_bin: ": if specified, do NOT bin the reads according to the mappability"
    bin_only: ": only bin the reads without normalization"
    fig: ": plot the read count VS GC figure in the specified file (in pdf format)"
    title: ": title of the figure"
    tmp: ": the tmp directory; If unspecified, use /usr/local/bin/tmp/"
    config_file: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}