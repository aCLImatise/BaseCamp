version 1.0

task Unitigger {
  input {
    Boolean? spec_file
    Boolean? depot
    Boolean? working_directory
  }
  command <<<
    unitigger \
      ~{if (spec_file) then "--spec_file" else ""} \
      ~{if (depot) then "--depot" else ""} \
      ~{if (working_directory) then "--working_directory" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    spec_file: "spec file (string [=])"
    depot: "depot path (string)"
    working_directory: "working directory (string [=.])"
  }
  output {
    File out_stdout = stdout()
  }
}