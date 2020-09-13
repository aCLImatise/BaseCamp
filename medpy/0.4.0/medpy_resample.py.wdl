version 1.0

task MedpyResamplepy {
  input {
    Int? order
    Boolean? verbose
    Boolean? display_debug_information
    Boolean? force
  }
  command <<<
    medpy_resample_py \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (display_debug_information) then "-d" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    order: "the bspline order, default is 2; means nearest\\nneighbours; see also medpy_binary_resampling.py"
    verbose: "verbose output"
    display_debug_information: "Display debug information."
    force: "overwrite existing files"
  }
  output {
    File out_stdout = stdout()
  }
}