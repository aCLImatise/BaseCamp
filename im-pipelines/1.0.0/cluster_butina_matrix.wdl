version 1.0

task ClusterButinaMatrix {
  input {
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
    String? threshold
    String? matrix_threshold
    String? descriptor
    String? metric
    Boolean? quiet
  }
  command <<<
    cluster_butina_matrix \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(matrix_threshold) then ("--matrixThreshold " +  '"' + matrix_threshold + '"') else ""} \
      ~{if defined(descriptor) then ("--descriptor " +  '"' + descriptor + '"') else ""} \
      ~{if defined(metric) then ("--metric " +  '"' + metric + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'tsv'."
    write_metadata_metrics: "Write metadata and metrics files"
    threshold: "Similarity clustering threshold (1.0 means identical)"
    matrix_threshold: "Threshold for outputting values (1.0 means identical)"
    descriptor: "descriptor or fingerprint type (default rdkit)"
    metric: "similarity metric (default tanimoto)"
    quiet: "Quiet mode"
  }
}