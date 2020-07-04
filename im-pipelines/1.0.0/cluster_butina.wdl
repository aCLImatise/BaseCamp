version 1.0

task ClusterButina {
  input {
    String? threshold
    String? descriptor
    String? metric
    String? num
    String? exclude
    String? fragment_method
    Boolean? output_fragment
    String? field
    Boolean? min
    Boolean? max
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
    Boolean? quiet
    Boolean? thin
  }
  command <<<
    cluster_butina \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(descriptor) then ("--descriptor " +  '"' + descriptor + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(fragment_method) then ("--fragment-method " +  '"' + fragment_method + '"') else ""} \
      ~{true="--output-fragment" false="" output_fragment} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{true="--min" false="" min} \
      ~{true="--max" false="" max} \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--thin" false="" thin}
  >>>
  parameter_meta {
    threshold: "similarity clustering threshold (1.0 means identical)"
    descriptor: "descriptor or fingerprint type (default rdkit)"
    metric: "similarity metric (default tanimoto)"
    num: "maximum number to pick for diverse subset selection"
    exclude: "threshold for excluding structures in diverse subset selection (1.0 means identical)"
    fragment_method: "Approach to find biggest fragment if more than one (hac = biggest by heavy atom count, mw = biggest by mol weight)"
    output_fragment: "Output the biggest fragment rather than the original molecule"
    field: "field to use to optimise diverse subset selection"
    min: "pick lowest value specified by the --field option"
    max: "pick highest value specified by the --field option"
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'sdf'."
    write_metadata_metrics: "Write metadata and metrics files"
    quiet: "Quiet mode"
    thin: "Thin output mode"
  }
}