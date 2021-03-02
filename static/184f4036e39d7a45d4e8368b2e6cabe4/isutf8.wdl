version 1.0

task Isutf8 {
  input {
    Boolean? quiet
    Boolean? hq
    File? var_file
  }
  command <<<
    isutf8 \
      ~{var_file} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (hq) then "-hq" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: ""
    hq: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}