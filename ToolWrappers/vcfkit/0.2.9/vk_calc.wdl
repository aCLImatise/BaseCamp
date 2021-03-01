version 1.0

task VkCalc {
  input {
    Boolean? frequency
    String genotypes
    String sample_hom_gt
    String spectrum
  }
  command <<<
    vk calc \
      ~{genotypes} \
      ~{sample_hom_gt} \
      ~{spectrum} \
      ~{if (frequency) then "--frequency" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcfkit:0.2.9--pyh5bfb8f1_0"
  }
  parameter_meta {
    frequency: ""
    genotypes: ""
    sample_hom_gt: ""
    spectrum: ""
  }
  output {
    File out_stdout = stdout()
  }
}