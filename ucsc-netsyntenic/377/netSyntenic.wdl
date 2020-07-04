version 1.0

task NetSyntenic {
  input {
    String in_dotnet
    String out_dotnet
  }
  command <<<
    netSyntenic \
      ~{in_dotnet} \
      ~{out_dotnet}
  >>>
  parameter_meta {
    in_dotnet: ""
    out_dotnet: ""
  }
}