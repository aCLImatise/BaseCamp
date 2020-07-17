version 1.0

task SketchyUtilsFxSort {
  input {
    File? fast_x
    String? output_fast_file
  }
  command <<<
    sketchy utils fx-sort \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(output_fast_file) then ("--output " +  '"' + output_fast_file + '"') else ""}
  >>>
  parameter_meta {
    fast_x: "Path to Fast{a,q} input file.  [required]"
    output_fast_file: "Output to Fast{a,q} file. Default stdout [-]"
  }
}