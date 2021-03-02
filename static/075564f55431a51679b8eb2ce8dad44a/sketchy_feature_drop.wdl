version 1.0

task SketchyFeatureDrop {
  input {
    File? index
    File? path_dropped_file
    String? columns
  }
  command <<<
    sketchy feature drop \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(path_dropped_file) then ("--output " +  '"' + path_dropped_file + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    index: "Path to feature index input file.  [required]"
    path_dropped_file: "Path to dropped feature index output file\\n[index.dropped.tsv]"
    columns: "Comma-delimited string of columns to drop or \\\"clean\\\"\\n[clean]"
  }
  output {
    File out_stdout = stdout()
    File out_path_dropped_file = "${in_path_dropped_file}"
  }
}