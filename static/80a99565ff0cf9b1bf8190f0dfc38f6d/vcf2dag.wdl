version 1.0

task Vcf2dag {
  input {
    File? reference
    File? vcf_file
  }
  command <<<
    vcf2dag \
      ~{vcf_file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    reference: "FASTA reference file."
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}