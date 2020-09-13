version 1.0

task Pmrefresh {
  input {
    String cat
    File? file
  }
  command <<<
    pm_refresh \
      ~{cat} \
      ~{file}
  >>>
  parameter_meta {
    cat: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}