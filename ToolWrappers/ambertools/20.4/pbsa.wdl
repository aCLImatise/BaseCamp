version 1.0

task Pbsa {
  input {
    String? var_0
    String? i
    Boolean? var_2
  }
  command <<<
    pbsa \
      ~{if defined(var_0) then ("-o " +  '"' + var_0 + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (var_2) then "-O" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_0: ""
    i: ""
    var_2: ""
  }
  output {
    File out_stdout = stdout()
  }
}