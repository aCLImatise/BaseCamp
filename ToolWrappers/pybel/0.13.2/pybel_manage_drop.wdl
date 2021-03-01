version 1.0

task PybelManageDrop {
  input {
    Boolean? yes
  }
  command <<<
    pybel manage drop \
      ~{if (yes) then "--yes" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    yes: "Confirm the action without prompting."
  }
  output {
    File out_stdout = stdout()
  }
}