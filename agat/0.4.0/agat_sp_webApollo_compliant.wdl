version 1.0

task AgatSpWebApolloCompliant.pl {
  input {
    String? gff
    String? output_gff_file
  }
  command <<<
    agat_sp_webApollo_compliant.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}