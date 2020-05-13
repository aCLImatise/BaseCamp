version 1.0

task AlleyoopMerge {
  input {
    String outputOutput
    String columnColumn
    String columnColumnName
    String? countfilesCountfiles
  }
  command <<<
    alleyoop merge \
      ~{countfilesCountfiles} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(columnColumn) then ("--column " +  '"' + columnColumn + '"') else ""} \
      ~{if defined(columnColumnName) then ("--columnname " +  '"' + columnColumnName + '"') else ""}
  >>>
}