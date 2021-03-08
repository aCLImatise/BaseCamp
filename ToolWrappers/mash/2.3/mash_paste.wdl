version 1.0

task MashPaste {
  input {
    Boolean? input_files_lists
    String option
  }
  command <<<
    mash paste \
      ~{option} \
      ~{if (input_files_lists) then "-l" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mash:2.3--ha61e061_0"
  }
  parameter_meta {
    input_files_lists: "Input files are lists of file names."
    option: "Description (range) [default]"
  }
  output {
    File out_stdout = stdout()
  }
}