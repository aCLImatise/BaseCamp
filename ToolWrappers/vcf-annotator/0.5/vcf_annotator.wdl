version 1.0

task Vcfannotator {
  input {
    File? file_write_output
    String vcf_file
    String genbank_file
  }
  command <<<
    vcf_annotator \
      ~{vcf_file} \
      ~{genbank_file} \
      ~{if defined(file_write_output) then ("--output " +  '"' + file_write_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_write_output: "File to write VCF output to (Default STDOUT)."
    vcf_file: "VCF file of variants"
    genbank_file: "GenBank file of the reference genome."
  }
  output {
    File out_stdout = stdout()
    File out_file_write_output = "${in_file_write_output}"
  }
}