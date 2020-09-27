version 1.0

task NetSplit {
  input {
    String in_dotnet
  }
  command <<<
    netSplit \
      ~{in_dotnet}
  >>>
  parameter_meta {
    in_dotnet: ""
  }
  output {
    File out_stdout = stdout()
  }
}