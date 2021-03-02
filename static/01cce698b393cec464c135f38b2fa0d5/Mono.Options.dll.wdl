version 1.0

task MonoOptionsdll {
  command <<<
    Mono_Options_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}