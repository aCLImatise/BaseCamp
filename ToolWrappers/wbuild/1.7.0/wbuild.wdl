version 1.0

task Wbuild {
  input {
    String? verbosity
    String demo
    String in_it
    String update
  }
  command <<<
    wbuild \
      ~{demo} \
      ~{in_it} \
      ~{update} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbosity: "Either CRITICAL, ERROR, WARNING, INFO or DEBUG"
    demo: "Setup a demo wBuild demo project"
    in_it: "Initialize the repository with wbuild."
    update: "Update the .wBuild folder to the most recent version of wBuild"
  }
  output {
    File out_stdout = stdout()
  }
}