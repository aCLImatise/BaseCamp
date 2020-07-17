version 1.0

task CheckvUpdateDatabase {
  input {
    Boolean? quiet
    Boolean? restart
    Int? threads
    String source_db
    String dest_db
    String genomes
  }
  command <<<
    checkv update_database \
      ~{source_db} \
      ~{dest_db} \
      ~{genomes} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--restart" false="" restart} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Suppress logging messages"
    restart: "Overwrite existing database"
    threads: "Number of threads for Prodigal and DIAMOND"
    source_db: "Path to current CheckV database."
    dest_db: "Path to updated CheckV database."
    genomes: "FASTA file of complete genomes to add to database, where each nucleotide sequence represents one genome."
  }
}