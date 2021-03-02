version 1.0

task Uropa {
  input {
    Boolean? bed
    Boolean? gtf
    Boolean? feature
    Boolean? feature_anchor
    Boolean? distance
    Boolean? strand
    Boolean? relative_location
    Boolean? internals
    Boolean? filter_attribute
    Boolean? attribute_values
    Boolean? priority
    File? filename_configuration_file
    Boolean? prefix
    Directory? outdir
    Boolean? output_by_query
    File? log
    Boolean? debug
    Boolean? chunk
    String attribute
    String seperately
    String format
  }
  command <<<
    uropa \
      ~{attribute} \
      ~{seperately} \
      ~{format} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (feature) then "--feature" else ""} \
      ~{if (feature_anchor) then "--feature-anchor" else ""} \
      ~{if (distance) then "--distance" else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (relative_location) then "--relative-location" else ""} \
      ~{if (internals) then "--internals" else ""} \
      ~{if (filter_attribute) then "--filter-attribute" else ""} \
      ~{if (attribute_values) then "--attribute-values" else ""} \
      ~{if (priority) then "--priority" else ""} \
      ~{if defined(filename_configuration_file) then ("--input " +  '"' + filename_configuration_file + '"') else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (output_by_query) then "--output-by-query" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (chunk) then "--chunk" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Filename of .bed-file to annotate"
    gtf: "Filename of .gtf-file with features"
    feature: "[ [ ...]]              Feature for annotation"
    feature_anchor: "[ [ ...]]       Specific feature anchor to annotate to"
    distance: "[ [ ...]]             Maximum permitted distance from feature (1 or 2\\narguments)"
    strand: "Desired strand of annotated feature relative to peak"
    relative_location: "[ [ ...]]    Peak location relative to feature location"
    internals: "Set minimum overlap fraction for internal feature\\nannotations. 0 equates to internals=False and 1 equates\\nto internals=True. Default is False."
    filter_attribute: "Filter on 9th column of GTF"
    attribute_values: "[ [ ...]]     Value(s) of attribute corresponding to --filter-"
    priority: "argparse.SUPPRESS"
    filename_configuration_file: "Filename of configuration file (keys in this file\\noverwrite command-line arguments about query)"
    prefix: "Prefix for result file names (defaults to basename of\\n.bed-file)"
    outdir: "Output directory for output files (default: current\\ndir)"
    output_by_query: "Additionally create output files for each named query"
    log: "Log file name for messages and warnings (default: log\\nis written to stdout)"
    debug: "Print verbose messages (for debugging)"
    chunk: "Number of lines per chunk for multiprocessing (default:\\n1000)"
    attribute: "--show-attributes [ [ ...]]      A list of attributes to show in output (default: all)"
    seperately: "-s, --summary                    Create additional visualisation of results in graphical"
    format: "-t n, --threads n                Multiprocessed run: n = number of threads to run"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}