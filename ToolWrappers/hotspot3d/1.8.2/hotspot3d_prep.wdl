version 1.0

task Hotspot3dPrep {
  input {
    Directory? output_dir
    Boolean? start
    Boolean? blat
    Boolean? gr_ch
    Boolean? release
    Boolean? p_value_cut_off
    Boolean? three_d_distance_cut_off
    Boolean? linear_cut_off
  }
  command <<<
    hotspot3d prep \
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (blat) then "--blat" else ""} \
      ~{if (gr_ch) then "--grch" else ""} \
      ~{if (release) then "--release" else ""} \
      ~{if (p_value_cut_off) then "--p-value-cutoff" else ""} \
      ~{if (three_d_distance_cut_off) then "--3d-distance-cutoff" else ""} \
      ~{if (linear_cut_off) then "--linear-cutoff" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "Output directory of proximity files\\nOPTIONAL"
    start: "What step to start on ( calroi , statis , anno , trans , cosmic , prior ), default is calroi"
    blat: "Installation of blat to use for trans (defaults to your system default)"
    gr_ch: "Genome build (37 or 38), defaults to 38 or according to --release input"
    release: "Ensembl release verion (55-87), defaults to 87 or to the latest release according to --grch input\\nNote that releases 55-75 correspond to GRCh37 & 76-87 correspond to GRCh38"
    p_value_cut_off: "p_value cutoff(<=) for prior, default is 0.05"
    three_d_distance_cut_off: "3D distance cutoff (<= Angstroms) for prior, default is 20"
    linear_cut_off: "Linear distance cutoff (> peptides) for prior, default is 0"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}