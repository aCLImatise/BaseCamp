version 1.0

task GdtoolsGD2GVF {
  input {
    String? reference
    String? name_output_file
    Boolean? snv_only
  }
  command <<<
    gdtools GD2GVF \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{true="--snv-only" false="" snv_only}
  >>>
  parameter_meta {
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    name_output_file: "name of output file (DEFAULT=output.gvf)"
    snv_only: "only include SNP/SNV entries in output"
  }
}