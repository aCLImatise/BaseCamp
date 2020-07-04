version 1.0

task Uropa {
  input {
    Boolean? _bed_filename
    Boolean? _gtf_filename
    Boolean? feature
    Boolean? feature_anchor
    Boolean? distance
    Boolean? strand
    Boolean? relative_location
    Boolean? internals
    Boolean? filter_attribute
    Boolean? attribute_values
    Boolean? show_attributes
    Boolean? priority
    String? filename_configuration_file
    Boolean? _prefix_defaults
    Boolean? _outdir_output
    Boolean? output_by_query
    Boolean? summary
    String? threads
    String? log
    Boolean? debug
    Boolean? _chunk_number
  }
  command <<<
    uropa \
      ~{true="-b" false="" _bed_filename} \
      ~{true="-g" false="" _gtf_filename} \
      ~{true="--feature" false="" feature} \
      ~{true="--feature-anchor" false="" feature_anchor} \
      ~{true="--distance" false="" distance} \
      ~{true="--strand" false="" strand} \
      ~{true="--relative-location" false="" relative_location} \
      ~{true="--internals" false="" internals} \
      ~{true="--filter-attribute" false="" filter_attribute} \
      ~{true="--attribute-values" false="" attribute_values} \
      ~{true="--show-attributes" false="" show_attributes} \
      ~{true="--priority" false="" priority} \
      ~{if defined(filename_configuration_file) then ("--input " +  '"' + filename_configuration_file + '"') else ""} \
      ~{true="-p" false="" _prefix_defaults} \
      ~{true="-o" false="" _outdir_output} \
      ~{true="--output-by-query" false="" output_by_query} \
      ~{true="--summary" false="" summary} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="-c" false="" _chunk_number}
  >>>
  parameter_meta {
    _bed_filename: ", --bed                       Filename of .bed-file to annotate"
    _gtf_filename: ", --gtf                       Filename of .gtf-file with features"
    feature: "[ [ ...]]              Feature for annotation"
    feature_anchor: "[ [ ...]]       Specific feature anchor to annotate to"
    distance: "[ [ ...]]             Maximum permitted distance from feature (1 or 2 arguments)"
    strand: "Desired strand of annotated feature relative to peak"
    relative_location: "[ [ ...]]    Peak location relative to feature location"
    internals: "Set minimum overlap fraction for internal feature annotations. 0 equates to internals=False and 1 equates to internals=True. Default is False."
    filter_attribute: "Filter on 9th column of GTF"
    attribute_values: "[ [ ...]]     Value(s) of attribute corresponding to --filter- attribute"
    show_attributes: "[ [ ...]]      A list of attributes to show in output (default: all)"
    priority: "argparse.SUPPRESS"
    filename_configuration_file: "Filename of configuration file (keys in this file overwrite command-line arguments about query)"
    _prefix_defaults: ", --prefix                    Prefix for result file names (defaults to basename of .bed-file)"
    _outdir_output: ", --outdir                    Output directory for output files (default: current dir)"
    output_by_query: "Additionally create output files for each named query seperately"
    summary: "Create additional visualisation of results in graphical format"
    threads: "Multiprocessed run: n = number of threads to run annotation process"
    log: "Log file name for messages and warnings (default: log is written to stdout)"
    debug: "Print verbose messages (for debugging)"
    _chunk_number: ", --chunk                     Number of lines per chunk for multiprocessing (default: 1000)"
  }
}