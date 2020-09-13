version 1.0

task NetSplit {
  input {
    String? xxx
    String in_dotnet
  }
  command <<<
    netSplit \
      ~{in_dotnet} \
      ~{if defined(xxx) then ("-xxx " +  '"' + xxx + '"') else ""}
  >>>
  parameter_meta {
    xxx: ""
    in_dotnet: ""
  }
  output {
    File out_stdout = stdout()
  }
}