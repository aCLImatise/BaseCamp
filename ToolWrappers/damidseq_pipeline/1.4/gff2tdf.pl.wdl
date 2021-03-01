version 1.0

task Gff2tdfpl {
  input {
    Boolean? format
    Boolean? genome
    Boolean? igv_path
  }
  command <<<
    gff2tdf_pl \
      ~{if (format) then "--format" else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (igv_path) then "--igvpath" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "input format to use (gff or bedgraph)\\n[Current value: gff]"
    genome: "IGVTools genome file to use\\n[Current value: dmel_r5.33]"
    igv_path: "path to IGVtools\\n(leave blank if igvtools and igvtools.jar are in your path)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}