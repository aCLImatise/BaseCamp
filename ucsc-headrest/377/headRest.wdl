version 1.0

task HeadRest {
  input {
    String? xxx
  }
  command <<<
    headRest \
      ~{if defined(xxx) then ("-xxx " +  '"' + xxx + '"') else ""}
  >>>
  parameter_meta {
    xxx: ""
  }
  output {
    File out_stdout = stdout()
  }
}