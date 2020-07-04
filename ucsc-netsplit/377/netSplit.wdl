version 1.0

task NetSplit {
  input {
    String in_dotnet
    String outdir
  }
  command <<<
    netSplit \
      ~{in_dotnet} \
      ~{outdir}
  >>>
  parameter_meta {
    in_dotnet: ""
    outdir: ""
  }
}