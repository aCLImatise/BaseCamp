version 1.0

task SketchyUtilsFxFilter {
  input {
    File? fpath
    String? output_fast_file
    File? ids
    Int? column
    String? sep
  }
  command <<<
    sketchy utils fx-filter \
      ~{if defined(fpath) then ("--fpath " +  '"' + fpath + '"') else ""} \
      ~{if defined(output_fast_file) then ("--output " +  '"' + output_fast_file + '"') else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""}
  >>>
  parameter_meta {
    fpath: "Path to Fast{a,q} input file.  [required]"
    output_fast_file: "Output to Fast{a,q} file. Default stdout [-]"
    ids: "Path to file containing the read IDs to get from Fast{a,q}.   [required]"
    column: "Column index that contains the IDs (0-based). [1]"
    sep: "File separator to read columns. ['\t']"
  }
}