version 1.0

task PhyluceUtilitiesGetBedFromFasta {
  input {
    File? fasta_file_parse
    File? bed_file_create
    String? locus_prefix
  }
  command <<<
    phyluce_utilities_get_bed_from_fasta \
      ~{if defined(fasta_file_parse) then ("--input " +  '"' + fasta_file_parse + '"') else ""} \
      ~{if defined(bed_file_create) then ("--output " +  '"' + bed_file_create + '"') else ""} \
      ~{if defined(locus_prefix) then ("--locus-prefix " +  '"' + locus_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fasta_file_parse: "The fasta file to parse"
    bed_file_create: "The BED file to create"
    locus_prefix: "A prefix to add to each locus name\\n"
  }
  output {
    File out_stdout = stdout()
  }
}