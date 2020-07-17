version 1.0

task PoppunkCalculateSilhouette.py {
  input {
    String? distances
    String? cluster_csv
    String? cluster_col
    String? id_col
    String? sub
    String calculate_silhouette
  }
  command <<<
    poppunk_calculate_silhouette.py \
      ~{calculate_silhouette} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if defined(cluster_csv) then ("--cluster-csv " +  '"' + cluster_csv + '"') else ""} \
      ~{if defined(cluster_col) then ("--cluster-col " +  '"' + cluster_col + '"') else ""} \
      ~{if defined(id_col) then ("--id-col " +  '"' + id_col + '"') else ""} \
      ~{if defined(sub) then ("--sub " +  '"' + sub + '"') else ""}
  >>>
  parameter_meta {
    distances: "Prefix of input pickle of pre-calculated distances (required)"
    cluster_csv: "Cluster assignments"
    cluster_col: "Column with cluster assignment (default = 2)"
    id_col: "Column with sample names (default = 1)"
    sub: "Remove string from sample names"
    calculate_silhouette: ""
  }
}