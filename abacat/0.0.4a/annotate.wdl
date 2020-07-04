version 1.0

task Annotate.py {
  input {
    String? input_file_must
    String? database
    String? blast
    String? evalue
  }
  command <<<
    annotate.py \
      ~{if defined(input_file_must) then ("--input " +  '"' + input_file_must + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(blast) then ("--blast " +  '"' + blast + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""}
  >>>
  parameter_meta {
    input_file_must: "Input file. Must a valid FASTA contigs file (post- assembly)."
    database: "Database name. Must be in abacat.CONFIG.py db parameter."
    blast: "Blast method. Choose from 'blastn', 'blastp' or 'blastx'. Default is 'blastn'"
    evalue: "E-value for BLAST. Default is the one set in abacat/config.py"
  }
}