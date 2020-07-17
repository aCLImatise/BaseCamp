version 1.0

task GdtoolsMUTATIONS {
  input {
    String? path_output_file
    String? reference
  }
  command <<<
    gdtools MUTATIONS \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    path_output_file: "Path to output GD file with mutations predicted from evidence. (DEFAULT=output.gd)"
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
  }
}