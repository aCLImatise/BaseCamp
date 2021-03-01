version 1.0

task VkPhylo {
  input {
    String fast_a
    String tree
    String vcf
  }
  command <<<
    vk phylo \
      ~{fast_a} \
      ~{tree} \
      ~{vcf}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: ""
    tree: ""
    vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}