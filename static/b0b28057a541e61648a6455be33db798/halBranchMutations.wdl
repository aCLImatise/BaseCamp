version 1.0

task HalBranchMutations {
  input {
    String hal_file
    String ref_genome
  }
  command <<<
    halBranchMutations \
      ~{hal_file} \
      ~{ref_genome}
  >>>
  parameter_meta {
    hal_file: ""
    ref_genome: ""
  }
}