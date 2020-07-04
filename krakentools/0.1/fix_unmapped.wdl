version 1.0

task FixUnmapped.py {
  input {
    String? input_file
    Array[String] accession_two_taxid
    String? output_file
    String? remaining
  }
  command <<<
    fix_unmapped.py \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(accession_two_taxid) then ("--accession2taxid " +  '"' + accession_two_taxid + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(remaining) then ("--remaining " +  '"' + remaining + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input file containing accession IDs to map. Multi- column files accepted. Only accessions in the first column will be mapped."
    accession_two_taxid: "Accession2taxid reference mappings to search. NCBI accession2taxid format required: 4 columns with accessions in column 1 and taxonomy IDs in column 3."
    output_file: "Output file with 2 tab-delimited columns for accessions and taxids"
    remaining: "Name of text file containing non-found accessions from input file"
  }
}