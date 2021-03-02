version 1.0

task GdtoolsGD2GVF {
  input {
    File? reference
    File? name_output_defaultoutputgvf
    Boolean? snv_only
  }
  command <<<
    gdtools GD2GVF \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(name_output_defaultoutputgvf) then ("--output " +  '"' + name_output_defaultoutputgvf + '"') else ""} \
      ~{if (snv_only) then "--snv-only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    name_output_defaultoutputgvf: "name of output file (DEFAULT=output.gvf)"
    snv_only: "only include SNP/SNV entries in output"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_defaultoutputgvf = "${in_name_output_defaultoutputgvf}"
  }
}