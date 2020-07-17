version 1.0

task VcfAnnotator {
  input {
    String? file_write_output
    String vcf_file
    String genbank_file
  }
  command <<<
    vcf-annotator \
      ~{vcf_file} \
      ~{genbank_file} \
      ~{if defined(file_write_output) then ("--output " +  '"' + file_write_output + '"') else ""}
  >>>
  parameter_meta {
    file_write_output: "File to write VCF output to (Default STDOUT)."
    vcf_file: "VCF file of variants"
    genbank_file: "GenBank file of the reference genome."
  }
}