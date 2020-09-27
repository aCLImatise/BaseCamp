version 1.0

task Dshvcfpedigree {
  input {
    Boolean? about
    Boolean? input_vcf_file
    File? output_pedigree_file
  }
  command <<<
    dsh_vcf_pedigree \
      ~{if (about) then "--about" else ""} \
      ~{if (input_vcf_file) then "--input-vcf-file" else ""} \
      ~{if (output_pedigree_file) then "--output-pedigree-file" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    input_vcf_file: "[class java.io.File]  input VCF file, default stdin [optional]"
    output_pedigree_file: "[class java.io.File]  output pedigree file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_pedigree_file = "${in_output_pedigree_file}"
  }
}