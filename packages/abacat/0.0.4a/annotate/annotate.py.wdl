version 1.0

task Annotatepy {
  input {
    File? input_file_must
    String? database
    String? blast
    String? evalue
  }
  command <<<
    annotate_py \
      ~{if defined(input_file_must) then ("--input " +  '"' + input_file_must + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(blast) then ("--blast " +  '"' + blast + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""}
  >>>
  parameter_meta {
    input_file_must: "Input file. Must a valid FASTA contigs file (post-\\nassembly)."
    database: "Database name. Must be in abacat.CONFIG.py db\\nparameter."
    blast: "Blast method. Choose from 'blastn', 'blastp' or\\n'blastx'. Default is 'blastn'"
    evalue: "E-value for BLAST. Default is the one set in\\nabacat/config.py\\n"
  }
  output {
    File out_stdout = stdout()
  }
}