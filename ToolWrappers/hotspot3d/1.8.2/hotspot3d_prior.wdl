version 1.0

task Hotspot3dPrior {
  input {
    Directory? output_dir
    Boolean? p_value_cut_off
    Boolean? three_d_distance_cut_off
    Boolean? linear_cut_off
  }
  command <<<
    hotspot3d prior \
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (p_value_cut_off) then "--p-value-cutoff" else ""} \
      ~{if (three_d_distance_cut_off) then "--3d-distance-cutoff" else ""} \
      ~{if (linear_cut_off) then "--linear-cutoff" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "Output directory\\nOPTIONAL"
    p_value_cut_off: "p_value cutoff(<=), default is 0.05"
    three_d_distance_cut_off: "3D distance cutoff (<= Angstroms), default is 20"
    linear_cut_off: "Linear distance cutoff (> peptides), default is 0"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}