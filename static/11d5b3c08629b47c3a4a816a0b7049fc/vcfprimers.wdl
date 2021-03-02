version 1.0

task Vcfprimers {
  input {
    Boolean? fast_a_reference
    Boolean? primer_length
    File vcf_file
  }
  command <<<
    vcfprimers \
      ~{vcf_file} \
      ~{if (fast_a_reference) then "--fasta-reference" else ""} \
      ~{if (primer_length) then "--primer-length" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_reference: "FASTA reference file to use to obtain primer sequences"
    primer_length: "The length of the primer sequences on each side of the variant"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}