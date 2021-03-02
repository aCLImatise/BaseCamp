version 1.0

task PlanemoBrew {
  input {
    File? brew
    String tool_path
  }
  command <<<
    planemo brew \
      ~{tool_path} \
      ~{if defined(brew) then ("--brew " +  '"' + brew + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    brew: "Homebrew 'brew' executable to use."
    tool_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}