version 1.0

task Blast2gffUniprot {
  input {
    Boolean? verbose
    String? blast_file
    String? gff_file
  }
  command <<<
    blast2gff uniprot \
      ~{blast_file} \
      ~{gff_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-db, --db-used TEXT         Uniprot database used with BLAST  [default:\\nUNIPROT-SP]\\n-n, --no-split              if used, the script assumes that the sequence\\nheader will be used as gene_id\\n-a, --fasta-file PATH       Optional FASTA file with the query sequences\\n-dbq, --db-quality INTEGER  Quality of the DB used  [default: 10]\\n-b, --bitscore FLOAT        Minimum bitscore to keep the annotation\\n[default: 0.0]\\n-k, --attr-value TEXT       Additional attribute and value to add to each\\nannotation, in the form attr:value\\n-ft, --feat-type TEXT       Feature type to use in the GFF  [default: CDS]\\n--progress                  Shows Progress Bar\\n--help                      Show this message and exit.\\n"
    blast_file: ""
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}