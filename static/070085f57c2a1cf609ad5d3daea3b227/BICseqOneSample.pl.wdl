version 1.0

task BICseqOneSamplepl {
  input {
    Float? lambda
    Directory? tmp
    File? fig
    String? title
    Boolean? nrm
    Boolean? bootstrap
    Boolean? no_scale
    Boolean? strict
  }
  command <<<
    BICseqOneSample_pl \
      ~{if defined(lambda) then ("--lambda " +  '"' + lambda + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(fig) then ("--fig " +  '"' + fig + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (nrm) then "--nrm" else ""} \
      ~{if (bootstrap) then "--bootstrap" else ""} \
      ~{if (no_scale) then "--noscale" else ""} \
      ~{if (strict) then "--strict" else ""}
  >>>
  parameter_meta {
    lambda: ": the (positive) penalty used for BIC-seq"
    tmp: ": the tmp directory; If unspecified, use /usr/local/bin/tmp/"
    fig: ": plot the CNV profile in a png file"
    title: ": the title of the figure"
    nrm: ": Do not remove segments with bad mappability"
    bootstrap: ": perform bootstrap test to assign confidence"
    no_scale: ": do not automatically adjust the lambda parameter according to the noise level in the data"
    strict: ": if specified, use a more stringent method to ajust the lambda parameter"
  }
  output {
    File out_stdout = stdout()
  }
}