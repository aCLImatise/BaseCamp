version 1.0

task NBICseqsegpl {
  input {
    Float? lambda
    Directory? tmp
    File? fig
    String? title
    Boolean? nrm
    Boolean? bootstrap
    Boolean? no_scale
    Boolean? strict
    Boolean? control
    Boolean? detail
    String config_file
    String var_output
  }
  command <<<
    NBICseq_seg_pl \
      ~{config_file} \
      ~{var_output} \
      ~{if defined(lambda) then ("--lambda " +  '"' + lambda + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(fig) then ("--fig " +  '"' + fig + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (nrm) then "--nrm" else ""} \
      ~{if (bootstrap) then "--bootstrap" else ""} \
      ~{if (no_scale) then "--noscale" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (control) then "--control" else ""} \
      ~{if (detail) then "--detail" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    lambda: ": the (positive) penalty used for BIC-seq"
    tmp: ": the tmp directory; If unspecified, use /usr/local/bin/tmp/"
    fig: ": plot the CNV profile in a png file"
    title: ": the title of the figure"
    nrm: ": do not remove likely germline CNVs (with a matched normal) or segments with bad mappability (without a matched normal)"
    bootstrap: ": perform bootstrap test to assign confidence (only for one sample case)"
    no_scale: ": do not automatically adjust the lambda parameter according to the noise level in the data"
    strict: ": if specified, use a more stringent method to ajust the lambda parameter"
    control: ": the data has a control genome"
    detail: ": if specified, print the detailed segmentation result (for multiSample only)"
    config_file: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}