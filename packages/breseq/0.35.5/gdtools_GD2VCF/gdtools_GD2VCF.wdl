version 1.0

task GdtoolsGD2VCF {
  input {
    File? reference
    File? name_output_file
  }
  command <<<
    gdtools GD2VCF \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/breseq:0.35.5--h8b12597_0"
  }
  parameter_meta {
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    name_output_file: "name of output file (DEFAULT=output.vcf)"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}