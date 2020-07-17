version 1.0

task DshVcfPedigree {
  input {
    Boolean? about
    Boolean? input_vcf_file
    Boolean? output_pedigree_file
  }
  command <<<
    dsh-vcf-pedigree \
      ~{true="--about" false="" about} \
      ~{true="--input-vcf-file" false="" input_vcf_file} \
      ~{true="--output-pedigree-file" false="" output_pedigree_file}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_vcf_file: "[class java.io.File]  input VCF file, default stdin [optional]"
    output_pedigree_file: "[class java.io.File]  output pedigree file, default stdout [optional]"
  }
}