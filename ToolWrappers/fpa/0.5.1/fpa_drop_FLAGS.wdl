version 1.0

task FpaDropFLAGS {
  input {
    String? var_input
    String fpa
  }
  command <<<
    fpa drop FLAGS \
      ~{fpa} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_input: ""
    fpa: ""
  }
  output {
    File out_stdout = stdout()
  }
}