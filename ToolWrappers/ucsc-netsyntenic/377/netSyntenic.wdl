version 1.0

task NetSyntenic {
  input {
    String? xxx
  }
  command <<<
    netSyntenic \
      ~{if defined(xxx) then ("-xxx " +  '"' + xxx + '"') else ""}
  >>>
  parameter_meta {
    xxx: ""
  }
  output {
    File out_stdout = stdout()
  }
}