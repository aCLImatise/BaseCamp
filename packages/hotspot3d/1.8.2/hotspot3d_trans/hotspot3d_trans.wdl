version 1.0

task Hotspot3dTrans {
  input {
    Directory? output_dir
    Boolean? blat
    Boolean? gr_ch
    Boolean? release
  }
  command <<<
    hotspot3d trans \
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (blat) then "--blat" else ""} \
      ~{if (gr_ch) then "--grch" else ""} \
      ~{if (release) then "--release" else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory of proximity files\\nOPTIONAL"
    blat: "Installation of blat to use (defaults to your system default)"
    gr_ch: "Genome build (37 or 38), defaults to 38 or according to --release input"
    release: "Ensembl release verion (55-87), defaults to 87 or to the latest release according to --grch input\\nNote that releases 55-75 correspond to GRCh37 & 76-87 correspond to GRCh38"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}