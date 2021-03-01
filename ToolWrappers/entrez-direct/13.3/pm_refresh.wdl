version 1.0

task Pmrefresh {
  input {
    String cat
    File? var_file
  }
  command <<<
    pm_refresh \
      ~{cat} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cat: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}