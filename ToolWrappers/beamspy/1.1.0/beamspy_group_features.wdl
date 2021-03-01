version 1.0

task BeamspyGroupfeatures {
  input {
    String? peak_list
    String? intensity_matrix
    String? db
    Int? max_rt_diff
    String? method
    String? coeff_threshold
    String? p_value_threshold
    File? gml_file
    Int? n_cpus
  }
  command <<<
    beamspy group_features \
      ~{if defined(peak_list) then ("--peaklist " +  '"' + peak_list + '"') else ""} \
      ~{if defined(intensity_matrix) then ("--intensity-matrix " +  '"' + intensity_matrix + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(max_rt_diff) then ("--max-rt-diff " +  '"' + max_rt_diff + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(coeff_threshold) then ("--coeff-threshold " +  '"' + coeff_threshold + '"') else ""} \
      ~{if defined(p_value_threshold) then ("--pvalue-threshold " +  '"' + p_value_threshold + '"') else ""} \
      ~{if defined(gml_file) then ("--gml-file " +  '"' + gml_file + '"') else ""} \
      ~{if defined(n_cpus) then ("--ncpus " +  '"' + n_cpus + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/beamspy:1.1.0--py_0"
  }
  parameter_meta {
    peak_list: "Tab-delimited peaklist."
    intensity_matrix: "Tab-delimited intensity matrix."
    db: "Sqlite database to write results."
    max_rt_diff: "Maximum difference in retention time between two\\npeaks."
    method: "Method to apply for grouping features."
    coeff_threshold: "Threshold for correlation coefficient."
    p_value_threshold: "Threshold for p-value."
    gml_file: "Write graph to GraphML format."
    n_cpus: "Number of central processing units (CPUs).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}