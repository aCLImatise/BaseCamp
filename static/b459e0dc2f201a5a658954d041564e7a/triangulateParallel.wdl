version 1.0

task TriangulateParallel {
  input {
    Boolean? strfile
    Boolean? anytime_triangulate
    Boolean? boundary_anytime
    Boolean? triangulate_anytime
    Boolean? other
  }
  command <<<
    triangulateParallel \
      ~{true="-strFile" false="" strfile} \
      ~{true="-anyTimeTriangulate" false="" anytime_triangulate} \
      ~{true="-boundaryAnyTime" false="" boundary_anytime} \
      ~{true="-triangulateAnyTime" false="" triangulate_anytime} \
      ~{true="-other" false="" other}
  >>>
  parameter_meta {
    strfile: "Structure file name"
    anytime_triangulate: "Total boundary/triangulate time"
    boundary_anytime: "Boundary search time"
    triangulate_anytime: "Triangulation search time"
    other: "Other arguments to gmtkTriangulate"
  }
}