version 1.0

task SsuEslCluster {
  input {
    String? field_read_query
    String? field_read_target
    String? field_read_distance
    String? _clustering_threshold
    Boolean? options
    String keyfile
    String tab_file
  }
  command <<<
    ssu-esl-cluster \
      ~{keyfile} \
      ~{tab_file} \
      ~{if defined(field_read_query) then ("-q " +  '"' + field_read_query + '"') else ""} \
      ~{if defined(field_read_target) then ("-t " +  '"' + field_read_target + '"') else ""} \
      ~{if defined(field_read_distance) then ("-v " +  '"' + field_read_distance + '"') else ""} \
      ~{if defined(_clustering_threshold) then ("-x " +  '"' + _clustering_threshold + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    field_read_query: ": field to read as query name, 1..n  [8]  (n>0)"
    field_read_target: ": field to read as target name, 1..n  [5]  (n>0)"
    field_read_distance: ": field to read as distance value, 1..n  [1]  (n>0)"
    _clustering_threshold: ": clustering threshold  [1e-4]  (x>0)"
    options: ""
    keyfile: ""
    tab_file: ""
  }
}