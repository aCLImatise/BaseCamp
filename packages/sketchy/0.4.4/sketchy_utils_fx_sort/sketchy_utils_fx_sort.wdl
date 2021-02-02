version 1.0

task SketchyUtilsFxsort {
  input {
    File? fast_x
    File? output_fast_file
  }
  command <<<
    sketchy utils fx_sort \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(output_fast_file) then ("--output " +  '"' + output_fast_file + '"') else ""}
  >>>
  parameter_meta {
    fast_x: "Path to Fast{a,q} input file.  [required]"
    output_fast_file: "Output to Fast{a,q} file. Default stdout [-]"
  }
  output {
    File out_stdout = stdout()
    File out_output_fast_file = "${in_output_fast_file}"
  }
}