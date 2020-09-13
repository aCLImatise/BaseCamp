version 1.0

task FilterErroneousOverlaps {
  input {
    Boolean? depot
    Boolean? spec_file
    Boolean? working_directory
  }
  command <<<
    filter_erroneous_overlaps \
      ~{if (depot) then "--depot" else ""} \
      ~{if (spec_file) then "--spec_file" else ""} \
      ~{if (working_directory) then "--working_directory" else ""}
  >>>
  parameter_meta {
    depot: "depot path (string)"
    spec_file: "spec file path (string [=])"
    working_directory: "working directory (string [=.])"
  }
  output {
    File out_stdout = stdout()
  }
}