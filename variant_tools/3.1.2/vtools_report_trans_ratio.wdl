version 1.0

task VtoolsReportTransRatio {
  input {
    String numNumField
    Boolean groupGroupBy
    Boolean vV
    String? tableTable
  }
  command <<<
    vtools_report trans_ratio \
      ~{tableTable} \
      ~{if defined(numNumField) then ("--num_field " +  '"' + numNumField + '"') else ""} \
      ~{true="--group_by" false="" groupGroupBy} \
      ~{true="-v" false="" vV}
  >>>
}