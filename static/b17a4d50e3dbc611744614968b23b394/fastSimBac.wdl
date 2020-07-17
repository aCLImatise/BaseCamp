version 1.0

task FastSimBac {
  input {
    String sample_size
    String region_in_base_pairs
  }
  command <<<
    fastSimBac \
      ~{sample_size} \
      ~{region_in_base_pairs}
  >>>
  parameter_meta {
    sample_size: ""
    region_in_base_pairs: ""
  }
}