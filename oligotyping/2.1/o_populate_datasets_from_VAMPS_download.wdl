version 1.0

task OPopulateDatasetsFromVAMPSDownload {
  input {
    String? tax_on
    String? output_file_name
    String fast_a
  }
  command <<<
    o-populate-datasets-from-VAMPS-download \
      ~{fast_a} \
      ~{if defined(tax_on) then ("--taxon " +  '"' + tax_on + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    tax_on: "Isolate a particular taxon"
    output_file_name: "Output file name"
    fast_a: "FASTA file downloaded from VAMPS"
  }
}