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