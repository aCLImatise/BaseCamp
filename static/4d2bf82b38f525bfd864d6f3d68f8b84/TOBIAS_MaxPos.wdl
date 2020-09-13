version 1.0

task TOBIASMaxPos {
  input {
    Boolean? bed
    Boolean? bigwig
    File? path_output_default
    Boolean? invert
  }
  command <<<
    TOBIAS MaxPos \
      ~{if (bed) then "--bed" else ""} \
      ~{if (bigwig) then "--bigwig" else ""} \
      ~{if (path_output_default) then "--output" else ""} \
      ~{if (invert) then "--invert" else ""}
  >>>
  parameter_meta {
    bed: "Regions to search for max position within"
    bigwig: "Scores used to identify maximum value"
    path_output_default: "Path to output .bed-file (default: scored sites are written to stdout)"
    invert: "Find minimum position instead of maximum position"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_default = "${in_path_output_default}"
  }
}