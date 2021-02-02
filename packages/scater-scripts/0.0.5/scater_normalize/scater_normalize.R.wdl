version 1.0

task ScaternormalizeR {
  input {
    File? input_object_file
    String? exprs_values
    Int? return_log
    Int? log_exprs_offset
    Int? centre_size_factors
    File? output_object_file
  }
  command <<<
    scater_normalize_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(exprs_values) then ("--exprs-values " +  '"' + exprs_values + '"') else ""} \
      ~{if defined(return_log) then ("--return-log " +  '"' + return_log + '"') else ""} \
      ~{if defined(log_exprs_offset) then ("--log-exprs-offset " +  '"' + log_exprs_offset + '"') else ""} \
      ~{if defined(centre_size_factors) then ("--centre-size-factors " +  '"' + centre_size_factors + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R SingleCellExperiment object where object matrix found"
    exprs_values: "String indicating which assay contains the count data that should be used to compute log-transformed expression values."
    return_log: "Logical scalar, should normalized values be returned on the log2 scale?"
    log_exprs_offset: "Numeric scalar specifying the offset to add when log-transforming expression values. If ‘NULL’, value is taken from ‘metadata(object)$log.exprs.offset’ if defined, otherwise 1."
    centre_size_factors: "Logical scalar indicating whether size fators should be centred."
    output_object_file: "File name in which to store serialized R object of type 'SingleCellExperiment'.'"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
  }
}