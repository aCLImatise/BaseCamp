version 1.0

task Mkarv {
  input {
    String? concurrency
    String? description
    Boolean? force
    Boolean? indent
    Int? maximum_fragment_length
    String? peak_reference
    String? reference
    String? template_directory
    Boolean? verbose
    Directory directory
    String metrics
  }
  command <<<
    mkarv \
      ~{directory} \
      ~{metrics} \
      ~{if defined(concurrency) then ("--concurrency " +  '"' + concurrency + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--indent" false="" indent} \
      ~{if defined(maximum_fragment_length) then ("--maximum-fragment-length " +  '"' + maximum_fragment_length + '"') else ""} \
      ~{if defined(peak_reference) then ("--peak-reference " +  '"' + peak_reference + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(template_directory) then ("--template-directory " +  '"' + template_directory + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    concurrency: "The number of concurrent processes to use (default: 1). (default: 1)"
    description: "A description for the viewer instance. (default: None)"
    force: "Overwrite the output directory if it exists. (default: False)"
    indent: "If indent is given, JSON output will be pretty-printed and indented. (default: False)"
    maximum_fragment_length: "The maximum fragment length for which the distance to the reference fragment length count distribution will be measured. (default: 1000)"
    peak_reference: "A reference set of peak metrics to plot. The default value is \"SRR891268\", the peak metrics of that sample in the ATAC-seq paper, as generated with MACS2 in our pipeline. It can be specified as \"calculate\", in which case these metrics will be averaged from the given metrics. It can also be the name of a JSON file, which must contain an object with two keys, \"cumulative_fraction_of_hqaa\" and \"cumulative_fraction_of_territory\", the value of each being an array of fractions of high-quality autosomal alignments (HQAA) or total peak territory, respectively. A tab- or comma-separated value file may also be given, in which each line contains two fractions, of HQAA and peak territory. All of these arrays should represent values at percentiles from 1-100. (default: SRR891268)"
    reference: "How to make the reference fragment length count distribution. The default value is \"SRR891268\", the fragment length distribution of that sample in the ATAC-seq paper. It can be specified as \"calculate\", in which case a distance will be calculated for each set of metrics from a reference distribution constructed from the rest of the given metrics. It can also be the name of a file containing a reference distribution. This file may be in JSON format, containing an object mapping fragment lengths to counts (e.g. \"{0: 0, 1: 10, 2: 17}\", or it may be a tab- or comma-separated value file in which each line contains a fragment length and count. It may (default: SRR891268)"
    template_directory: "The location of the web app directory template. (default: /tmp/tmps1pfyki3/web)"
    verbose: "Talk more. (default: False)"
    directory: "The path to the directory where the web app will be created."
    metrics: "One or more ataqv metrics files in JSON format. (default: None)"
  }
}