version 1.0

task Load2sqlitedb {
  input {
    Boolean? chunksize
    Boolean? no_idx
    Boolean? make_idx
    Boolean? clean
    String? dbaccess
    String? species
    String? parameters
    String fast_a_file
  }
  command <<<
    load2sqlitedb \
      ~{parameters} \
      ~{fast_a_file} \
      ~{if (chunksize) then "--chunksize" else ""} \
      ~{if (no_idx) then "--noIdx" else ""} \
      ~{if (make_idx) then "--makeIdx" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(dbaccess) then ("--dbaccess " +  '"' + dbaccess + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chunksize: "this option is only relevant when loading a sequence file\\nthe sequences in the input genome are split into chunks of this size so\\nthat subsequent retrievals of small sequence ranges do not require to read\\nthe complete - potentially much longer - chromosome. (<= 1000000, default 50000)"
    no_idx: "use this flag to suppress the building of indices on the database tables.\\nIf you are going to load several genomes and/or hint files in a row, this option\\nis recommended to speed up the loading. But make sure to build indices with\\n--makeIdx after all genomes/hints are loaded. Otherwise, data retrieval operations\\ncan be very slow."
    make_idx: "use this flag to build the indices on the database tables after loading several\\ngenomes and/or hint files with --noIdx. Only call this once for all species, e.g.\\nload2sqlitedb --makeIdx --dbaccess=database.db"
    clean: "makes a clean load deleting existing hints/genome for the species from the database.\\nWhen called with a gff file, only the hints for the species are delete, but not the genome.\\nWhen called with a fasta file, both hints and genome for the species are deleted."
    dbaccess: ""
    species: ""
    parameters: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}