version 1.0

task SketchyUtilsFxfilter {
  input {
    File? fpath
    File? output_fast_file
    File? ids
    Int? column
    File? sep
  }
  command <<<
    sketchy utils fx_filter \
      ~{if defined(fpath) then ("--fpath " +  '"' + fpath + '"') else ""} \
      ~{if defined(output_fast_file) then ("--output " +  '"' + output_fast_file + '"') else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    fpath: "Path to Fast{a,q} input file.  [required]"
    output_fast_file: "Output to Fast{a,q} file. Default stdout [-]"
    ids: "Path to file containing the read IDs to get from\\nFast{a,q}.   [required]"
    column: "Column index that contains the IDs (0-based). [1]"
    sep: "File separator to read columns. ['\\t']"
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_file = "${in_output_fast_file}"
  }
}