version 1.0

task Annotatepy {
  input {
    File? input_file_valid
    String? database
    String? blast
    String? evalue
  }
  command <<<
    annotate_py \
      ~{if defined(input_file_valid) then ("--input " +  '"' + input_file_valid + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(blast) then ("--blast " +  '"' + blast + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_valid: "Input file. Must a valid FASTA contigs file (post-\\nassembly)."
    database: "Database name. Must be in abacat.CONFIG.py db\\nparameter."
    blast: "Blast method. Choose from 'blastn', 'blastp' or\\n'blastx'. Default is 'blastn'"
    evalue: "E-value for BLAST. Default is the one set in\\nabacat/config.py\\n"
  }
  output {
    File out_stdout = stdout()
  }
}