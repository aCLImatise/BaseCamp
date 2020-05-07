version 1.0

task TableAddColumn.py {
  input {
    Boolean headerHeader
    Boolean commentsComments
  }
  command <<<
    table_add_column.py \
      ~{true="--header" false="" headerHeader} \
      ~{true="--comments" false="" commentsComments}
  >>>
}