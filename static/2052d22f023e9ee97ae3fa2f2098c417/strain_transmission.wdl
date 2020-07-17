version 1.0

task StrainTransmission.py {
  input {
    String? tree
    String? metadata
    String? output_dir
    Boolean? save_dist
    String? threshold
  }
  command <<<
    strain_transmission.py \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--save_dist" false="" save_dist} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    tree: "The input tree file"
    metadata: "The input metadata"
    output_dir: "The output directory"
    save_dist: "[Optional] Save the PhyPhlAn pairwise distances file"
    threshold: "[Optional] A custom distribution threshold value. Default: 0.01"
  }
}