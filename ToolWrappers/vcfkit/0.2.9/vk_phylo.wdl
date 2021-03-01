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
    docker: "quay.io/biocontainers/vcfkit:0.2.9--pyh5bfb8f1_0"
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