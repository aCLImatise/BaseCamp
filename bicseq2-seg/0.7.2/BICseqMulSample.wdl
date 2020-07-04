version 1.0

task BICseqMulSample.pl {
  input {
    Float? lambda
    String? tmp
    String? fig
    String? title
    Boolean? bootstrap
    Boolean? no_scale
    Boolean? strict
    Boolean? detail
  }
  command <<<
    BICseqMulSample.pl \
      ~{if defined(lambda) then ("--lambda " +  '"' + lambda + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(fig) then ("--fig " +  '"' + fig + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{true="--bootstrap" false="" bootstrap} \
      ~{true="--noscale" false="" no_scale} \
      ~{true="--strict" false="" strict} \
      ~{true="--detail" false="" detail}
  >>>
  parameter_meta {
    lambda: ": the (positive) penalty used for BIC-seq"
    tmp: ": the tmp directory; If unspecified, use /tmp/tmpsomb5k_a/bin/tmp/"
    fig: ": plot the CNV profile in a png file"
    title: ": the title of the figure"
    bootstrap: ": perform bootstrap test to assign confidence"
    no_scale: ": do not automatically adjust the lambda parameter according to the noise level in the data"
    strict: ": if specified, use a more stringent method to ajust the lambda parameter"
    detail: ": print the detailed information of the segmentaion result"
  }
}