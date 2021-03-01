version 1.0

task Cmph5toolspySelect {
  input {
    Int? outfile
    Array[String] idx_s
    String? group_by
    File? group_by_csv
    Int? where
  }
  command <<<
    cmph5tools_py select \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(idx_s) then ("--idxs " +  '"' + idx_s + '"') else ""} \
      ~{if defined(group_by) then ("--groupBy " +  '"' + group_by + '"') else ""} \
      ~{if defined(group_by_csv) then ("--groupByCsv " +  '"' + group_by_csv + '"') else ""} \
      ~{if defined(where) then ("--where " +  '"' + where + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "Either a pattern string or a filename"
    idx_s: "indices to select"
    group_by: "groupBy expression, e.g., Movie*Barcode"
    group_by_csv: "groupByCsv file, e.g.\\nGroup,Movie,Barcode\\ngroupname,movie,barcode"
    where: "where expression, e.g., ReadLength > 500"
  }
  output {
    File out_stdout = stdout()
  }
}