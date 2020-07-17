version 1.0

task WhatsGNUMain.py {
  input {
    String? mk_database
    String? database
    Boolean? pickle
    Boolean? sql
    Boolean? clusteredproteins_output_file
    String? database_mode
    Boolean? ri
    String? output_folder
    Boolean? force
    String? prefix
    Boolean? top_genomes
    String? strain_hits
    String? metadata
    Boolean? ids_hits
    Boolean? faa_gnu_zero
    Boolean? blastp
    Boolean? output_blastp
    Boolean? w
    Boolean? c
    Boolean? quiet
    String query_faa
  }
  command <<<
    WhatsGNU_main.py \
      ~{query_faa} \
      ~{if defined(mk_database) then ("--mkdatabase " +  '"' + mk_database + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{true="--pickle" false="" pickle} \
      ~{true="--sql" false="" sql} \
      ~{true="-r" false="" clusteredproteins_output_file} \
      ~{if defined(database_mode) then ("--database_mode " +  '"' + database_mode + '"') else ""} \
      ~{true="-ri" false="" ri} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--topgenomes" false="" top_genomes} \
      ~{if defined(strain_hits) then ("--strainhits " +  '"' + strain_hits + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{true="--ids_hits" false="" ids_hits} \
      ~{true="--faa_GNU_0" false="" faa_gnu_zero} \
      ~{true="--blastp" false="" blastp} \
      ~{true="--output_blastp" false="" output_blastp} \
      ~{true="-w" false="" w} \
      ~{true="-c" false="" c} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    mk_database: "you have to provide path to faa file or a folder of multiple faa files for compression"
    database: "you have to provide path to your compressed database"
    pickle: "Save database in pickle format [Default only txt file]"
    sql: "Save database in SQL format for large Databases [Default only txt file]"
    clusteredproteins_output_file: "[ROARY_CLUSTERED_PROTEINS], --roary_clustered_proteins [ROARY_CLUSTERED_PROTEINS] clustered_proteins output file from roary to be used with -m"
    database_mode: "select a mode from 'ortholog' or 'basic' to be used with -d"
    ri: "[RARITY_INDEX], --rarity_index [RARITY_INDEX] select an ortholog variant rarity index (OVRI) cutoff value in range (0-1)[0.045] for ortholog mode"
    output_folder: "Database output prefix to be created for results (default: timestamped WhatsGNU_results in the current directory)"
    force: "Force overwriting existing results folder assigned with -o (default: off)"
    prefix: "Prefix for output compressed database (default: WhatsGNU_compressed_database)"
    top_genomes: "create a file of top 10 genomes with hits"
    strain_hits: "check how many hits you get from a particular strain,it has to be used with -t"
    metadata: "get the metadata composition of your hits, use the metadata_frequency.csv file produced by the WhatsGNU customizer script"
    ids_hits: "create a file of each protein with locus_tags (ids) of all hits from the database, large file (~ 1 Gb for 3000 pts)"
    faa_gnu_zero: "get a fasta (.faa) file of all proteins with GNU score of zero"
    blastp: "run blastp on the proteins with GNU score of zero and modify the report with ortholog_info, blastp has to be installed"
    output_blastp: "get the output report of blastp run, it has to be used with -b"
    w: "[PERCENT_IDENTITY], --percent_identity [PERCENT_IDENTITY] select a blastp percent identity cutoff value [80], range(0,100)"
    c: "[PERCENT_COVERAGE], --percent_coverage [PERCENT_COVERAGE] select a blastp percent coverage cutoff value [80], range(0,100)"
    quiet: "No screen output [default OFF]"
    query_faa: "Query protein FASTA file/s to analyze (.faa)"
  }
}