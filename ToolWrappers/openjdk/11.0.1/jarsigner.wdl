version 1.0

task Jarsigner {
  input {
    File jar_file
    String var_alias
  }
  command <<<
    jarsigner \
      ~{jar_file} \
      ~{var_alias}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    jar_file: ""
    var_alias: ""
  }
  output {
    File out_stdout = stdout()
  }
}