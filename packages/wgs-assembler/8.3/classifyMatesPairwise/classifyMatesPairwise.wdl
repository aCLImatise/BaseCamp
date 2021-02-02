version 1.0

task ClassifyMatesPairwise {
  input {
    String? test
    String? trusted
    String? var_2
    String? var_3
    String? g
  }
  command <<<
    classifyMatesPairwise \
      ~{if defined(test) then ("-test " +  '"' + test + '"') else ""} \
      ~{if defined(trusted) then ("-trusted " +  '"' + trusted + '"') else ""} \
      ~{if defined(var_2) then ("-o " +  '"' + var_2 + '"') else ""} \
      ~{if defined(var_3) then ("-O " +  '"' + var_3 + '"') else ""} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    test: ""
    trusted: ""
    var_2: ""
    var_3: ""
    g: ""
  }
  output {
    File out_stdout = stdout()
  }
}