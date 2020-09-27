version 1.0

task FixUnmappedpy {
  input {
    File? input_file
    Array[String] accession_two_taxid
    File? output_file
    File? remaining
  }
  command <<<
    fix_unmapped_py \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(accession_two_taxid) then ("--accession2taxid " +  '"' + accession_two_taxid + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(remaining) then ("--remaining " +  '"' + remaining + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input file containing accession IDs to map. Multi-\\ncolumn files accepted. Only accessions in the first\\ncolumn will be mapped."
    accession_two_taxid: "Accession2taxid reference mappings to search. NCBI\\naccession2taxid format required: 4 columns with\\naccessions in column 1 and taxonomy IDs in column 3."
    output_file: "Output file with 2 tab-delimited columns for\\naccessions and taxids"
    remaining: "Name of text file containing non-found accessions from\\ninput file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}