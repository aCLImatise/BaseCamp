version 1.0

task Gff2tdf.pl {
  input {
    Boolean? format
    Boolean? genome
    Boolean? igv_path
  }
  command <<<
    gff2tdf.pl \
      ~{true="--format" false="" format} \
      ~{true="--genome" false="" genome} \
      ~{true="--igvpath" false="" igv_path}
  >>>
  parameter_meta {
    format: "input format to use (gff or bedgraph) [Current value: gff]"
    genome: "IGVTools genome file to use [Current value: dmel_r5.33]"
    igv_path: "path to IGVtools (leave blank if igvtools and igvtools.jar are in your path)"
  }
}