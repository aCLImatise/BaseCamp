version 1.0

task MedpyFitIntoShapepy {
  input {
    Boolean? verbose
    Boolean? display_debug_information
    Boolean? force
  }
  command <<<
    medpy_fit_into_shape_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    verbose: "verbose output"
    display_debug_information: "Display debug information."
    force: "overwrite existing files"
  }
  output {
    File out_stdout = stdout()
  }
}