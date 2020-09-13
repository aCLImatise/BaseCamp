version 1.0

task RunAmos {
  input {
    File? allows_variables_defined
    File? c
  }
  command <<<
    runAmos \
      ~{if defined(allows_variables_defined) then ("-D " +  '"' + allows_variables_defined + '"') else ""} \
      ~{if defined(c) then ("-C " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    allows_variables_defined: "allows variables to be defined outside of the conf file.\\nmultiple such options are allowed"
    c: ""
  }
  output {
    File out_stdout = stdout()
  }
}