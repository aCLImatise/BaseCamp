version 1.0

task Pindel2vcf4tcga {
  input {
    Boolean dD
    Boolean dD
  }
  command <<<
    pindel2vcf4tcga \
      ~{true="-d" false="" dD} \
      ~{true="-d" false="" dD}
  >>>
}