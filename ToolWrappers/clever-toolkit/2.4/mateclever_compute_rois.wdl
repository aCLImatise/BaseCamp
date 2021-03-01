version 1.0

task Mateclevercomputerois {
  input {
    Int? distance_deletion_breakpoints
    Int? maximum_deletion_length
  }
  command <<<
    mateclever_compute_rois \
      ~{if defined(distance_deletion_breakpoints) then ("-d " +  '"' + distance_deletion_breakpoints + '"') else ""} \
      ~{if defined(maximum_deletion_length) then ("-m " +  '"' + maximum_deletion_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    distance_deletion_breakpoints: "Distance from deletion breakpoints to be included (default:\\n750)."
    maximum_deletion_length: "Maximum deletion length to be considered (default: none)."
  }
  output {
    File out_stdout = stdout()
  }
}