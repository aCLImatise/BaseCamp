version 1.0

task GdtoolsGD2VCF {
  input {
    String? reference
    String? name_output_file
  }
  command <<<
    gdtools GD2VCF \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""}
  >>>
  parameter_meta {
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    name_output_file: "name of output file (DEFAULT=output.vcf)"
  }
}