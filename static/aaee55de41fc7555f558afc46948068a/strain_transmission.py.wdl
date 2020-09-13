version 1.0

task StrainTransmissionpy {
  input {
    File? tree
    String? metadata
    Directory? output_dir
    Boolean? save_dist
    Float? threshold
  }
  command <<<
    strain_transmission_py \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (save_dist) then "--save_dist" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    tree: "The input tree file"
    metadata: "The input metadata"
    output_dir: "The output directory"
    save_dist: "[Optional] Save the PhyPhlAn pairwise distances file"
    threshold: "[Optional] A custom distribution threshold value.\\nDefault: 0.01\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}