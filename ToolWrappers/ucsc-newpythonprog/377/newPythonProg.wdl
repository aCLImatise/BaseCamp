version 1.0

task NewPythonProg {
  input {
    String? xxx
  }
  command <<<
    newPythonProg \
      ~{if defined(xxx) then ("-xxx " +  '"' + xxx + '"') else ""}
  >>>
  parameter_meta {
    xxx: ""
  }
  output {
    File out_stdout = stdout()
  }
}