version 1.0

task Mkarv {
  input {
    Int? concurrency
    String? description
    Directory? force
    Boolean? indent
    Int? maximum_fragment_length
    File? peak_reference
    Int? reference
    Directory? template_directory
    Boolean? verbose
    Directory directory
    String created_dot
  }
  command <<<
    mkarv \
      ~{directory} \
      ~{created_dot} \
      ~{if defined(concurrency) then ("--concurrency " +  '"' + concurrency + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (indent) then "--indent" else ""} \
      ~{if defined(maximum_fragment_length) then ("--maximum-fragment-length " +  '"' + maximum_fragment_length + '"') else ""} \
      ~{if defined(peak_reference) then ("--peak-reference " +  '"' + peak_reference + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(template_directory) then ("--template-directory " +  '"' + template_directory + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    concurrency: "The number of concurrent processes to use (default:\\n1). (default: 1)"
    description: "A description for the viewer instance. (default: None)"
    force: "Overwrite the output directory if it exists. (default:\\nFalse)"
    indent: "If indent is given, JSON output will be pretty-printed\\nand indented. (default: False)"
    maximum_fragment_length: "The maximum fragment length for which the distance to\\nthe reference fragment length count distribution will\\nbe measured. (default: 1000)"
    peak_reference: "A reference set of peak metrics to plot. The default\\nvalue is \\\"SRR891268\\\", the peak metrics of that sample\\nin the ATAC-seq paper, as generated with MACS2 in our\\npipeline. It can be specified as \\\"calculate\\\", in which\\ncase these metrics will be averaged from the given\\nmetrics. It can also be the name of a JSON file, which\\nmust contain an object with two keys,\\n\\\"cumulative_fraction_of_hqaa\\\" and\\n\\\"cumulative_fraction_of_territory\\\", the value of each\\nbeing an array of fractions of high-quality autosomal\\nalignments (HQAA) or total peak territory,\\nrespectively. A tab- or comma-separated value file may\\nalso be given, in which each line contains two\\nfractions, of HQAA and peak territory. All of these\\narrays should represent values at percentiles from\\n1-100. (default: SRR891268)"
    reference: "How to make the reference fragment length count\\ndistribution. The default value is \\\"SRR891268\\\", the\\nfragment length distribution of that sample in the\\nATAC-seq paper. It can be specified as \\\"calculate\\\", in\\nwhich case a distance will be calculated for each set\\nof metrics from a reference distribution constructed\\nfrom the rest of the given metrics. It can also be the\\nname of a file containing a reference distribution.\\nThis file may be in JSON format, containing an object\\nmapping fragment lengths to counts (e.g. \\\"{0: 0, 1:\\n10, 2: 17}\\\", or it may be a tab- or comma-separated\\nvalue file in which each line contains a fragment\\nlength and count. It may (default: SRR891268)"
    template_directory: "The location of the web app directory template.\\n(default: /usr/local/web)"
    verbose: "Talk more. (default: False)"
    directory: "The path to the directory where the web app will be"
    created_dot: "metrics               One or more ataqv metrics files in JSON format."
  }
  output {
    File out_stdout = stdout()
    Directory out_force = "${in_force}"
  }
}