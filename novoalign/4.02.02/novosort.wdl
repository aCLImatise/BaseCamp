version 1.0

task Novosort {
  input {
    Boolean? umi
    String sorted_dot
  }
  command <<<
    novosort \
      ~{sorted_dot} \
      ~{if (umi) then "--UMI" else ""}
  >>>
  parameter_meta {
    umi: "UMI is part of Illumina read header '@Instrument:RunID:FlowCellID:Lane:Tile:X:Y:UMI'\\nIf --UMI & --uniqueTags are both used then UMI tags takes precedence if it exists\\non the header. If not found we look for the unique tags. This allows some degree of\\nmixing source of UMI."
    sorted_dot: "[--assumesorted|-a]            Assume input files are already sorted even if @HD doesn't"
  }
  output {
    File out_stdout = stdout()
  }
}