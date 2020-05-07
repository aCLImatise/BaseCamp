version 1.0

task PoppunkCalculateSilhouette.py {
  input {
    String distancesDistances
    String clusterClusterCsv
    String clusterClusterCol
    String idIdCol
    String subSub
  }
  command <<<
    poppunk_calculate_silhouette.py \
      ~{if defined(distancesDistances) then ("--distances " +  '"' + distancesDistances + '"') else ""} \
      ~{if defined(clusterClusterCsv) then ("--cluster-csv " +  '"' + clusterClusterCsv + '"') else ""} \
      ~{if defined(clusterClusterCol) then ("--cluster-col " +  '"' + clusterClusterCol + '"') else ""} \
      ~{if defined(idIdCol) then ("--id-col " +  '"' + idIdCol + '"') else ""} \
      ~{if defined(subSub) then ("--sub " +  '"' + subSub + '"') else ""}
  >>>
}