version 1.0

task VtoolsReportAvgDepth {
  input {
    String numNumField
    String depthDepthField
    Boolean groupGroupBy
    Boolean vV
    String? tableTable
  }
  command <<<
    vtools_report avg_depth \
      ~{tableTable} \
      ~{if defined(numNumField) then ("--num_field " +  '"' + numNumField + '"') else ""} \
      ~{if defined(depthDepthField) then ("--depth_field " +  '"' + depthDepthField + '"') else ""} \
      ~{true="--group_by" false="" groupGroupBy} \
      ~{true="-v" false="" vV}
  >>>
}