version 1.0

task ExtractMatrix.py {
  input {
    String inIn
    String outOut
    Array[String]+ columnsColumns
  }
  command <<<
    extract_matrix.py \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(columnsColumns) then ("--columns " +  '"' + columnsColumns + '"') else ""}
  >>>
}