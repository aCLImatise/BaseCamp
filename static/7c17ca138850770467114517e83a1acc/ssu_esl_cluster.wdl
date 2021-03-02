version 1.0

task Ssueslcluster {
  input {
    Int? field_read_query
    Int? field_read_target
    Int? field_read_distance
    Float? _clustering_threshold
    Boolean? options
    String keyfile
    String tab_file
  }
  command <<<
    ssu_esl_cluster \
      ~{keyfile} \
      ~{tab_file} \
      ~{if defined(field_read_query) then ("-q " +  '"' + field_read_query + '"') else ""} \
      ~{if defined(field_read_target) then ("-t " +  '"' + field_read_target + '"') else ""} \
      ~{if defined(field_read_distance) then ("-v " +  '"' + field_read_distance + '"') else ""} \
      ~{if defined(_clustering_threshold) then ("-x " +  '"' + _clustering_threshold + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    field_read_query: ": field to read as query name, 1..n  [8]  (n>0)"
    field_read_target: ": field to read as target name, 1..n  [5]  (n>0)"
    field_read_distance: ": field to read as distance value, 1..n  [1]  (n>0)"
    _clustering_threshold: ": clustering threshold  [1e-4]  (x>0)"
    options: ""
    keyfile: ""
    tab_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}