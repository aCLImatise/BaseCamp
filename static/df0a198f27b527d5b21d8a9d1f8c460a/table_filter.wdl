version 1.0

task TableFilter.py {
  input {
    Boolean headerHeader
    Boolean commentsComments
    Boolean forceForceHeader
    String colsCols
  }
  command <<<
    table_filter.py \
      ~{true="--header" false="" headerHeader} \
      ~{true="--comments" false="" commentsComments} \
      ~{true="--force-header" false="" forceForceHeader} \
      ~{if defined(colsCols) then ("--cols " +  '"' + colsCols + '"') else ""}
  >>>
}