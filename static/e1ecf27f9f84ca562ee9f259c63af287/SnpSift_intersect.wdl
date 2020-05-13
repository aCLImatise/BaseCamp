version 1.0

task SnpSiftIntersect {
  input {
    String minMinOverlap
    String clusterCluster
    Boolean intersectIntersect
    Boolean unionUnion
    File notNot
    String? javaJava
    File? fileFile1bed
    File? fileFileNBed
  }
  command <<<
    SnpSift intersect \
      ~{javaJava} \
      ~{if defined(minMinOverlap) then ("-minOverlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(clusterCluster) then ("-cluster " +  '"' + clusterCluster + '"') else ""} \
      ~{true="-intersect" false="" intersectIntersect} \
      ~{true="-union" false="" unionUnion} \
      ~{if defined(notNot) then ("-not " +  '"' + notNot + '"') else ""} \
      ~{fileFile1bed} \
      ~{fileFileNBed}
  >>>
}