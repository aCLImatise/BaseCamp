version 1.0

task Pindel2vcf {
  input {
    Boolean dD
    Boolean dD
  }
  command <<<
    pindel2vcf \
      ~{true="-d" false="" dD} \
      ~{true="-d" false="" dD}
  >>>
}