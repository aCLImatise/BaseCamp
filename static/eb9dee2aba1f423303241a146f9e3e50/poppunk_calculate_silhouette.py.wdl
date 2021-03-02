version 1.0

task PoppunkCalculateSilhouettepy {
  input {
    String? distances
    String? cluster_csv
    Int? cluster_col
    Int? id_col
    String? sub
    String calculate_silhouette
  }
  command <<<
    poppunk_calculate_silhouette_py \
      ~{calculate_silhouette} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(cluster_csv) then ("--cluster-csv " +  '"' + cluster_csv + '"') else ""} \
      ~{if defined(cluster_col) then ("--cluster-col " +  '"' + cluster_col + '"') else ""} \
      ~{if defined(id_col) then ("--id-col " +  '"' + id_col + '"') else ""} \
      ~{if defined(sub) then ("--sub " +  '"' + sub + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    distances: "Prefix of input pickle of pre-calculated distances\\n(required)"
    cluster_csv: "Cluster assignments"
    cluster_col: "Column with cluster assignment (default = 2)"
    id_col: "Column with sample names (default = 1)"
    sub: "Remove string from sample names"
    calculate_silhouette: ""
  }
  output {
    File out_stdout = stdout()
  }
}