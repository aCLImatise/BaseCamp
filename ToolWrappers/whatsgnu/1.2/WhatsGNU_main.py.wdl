version 1.0

task WhatsGNUMainpy {
  input {
    File? mk_database
    File? database
    Boolean? pickle
    Boolean? sql
    File? clusteredproteins_output_file
    String? database_mode
    Boolean? ri
    Directory? output_folder
    Boolean? force
    String? prefix
    Boolean? top_genomes
    String? strain_hits
    File? metadata
    Boolean? ids_hits
    Boolean? faa_gnu_zero
    Boolean? blastp
    Boolean? output_blastp
    Boolean? select_percent_value
    Boolean? select_coverage_value
    Boolean? quiet
  }
  command <<<
    WhatsGNU_main_py \
      ~{if defined(mk_database) then ("--mkdatabase " +  '"' + mk_database + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (pickle) then "--pickle" else ""} \
      ~{if (sql) then "--sql" else ""} \
      ~{if (clusteredproteins_output_file) then "-r" else ""} \
      ~{if defined(database_mode) then ("--database_mode " +  '"' + database_mode + '"') else ""} \
      ~{if (ri) then "-ri" else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (top_genomes) then "--topgenomes" else ""} \
      ~{if defined(strain_hits) then ("--strainhits " +  '"' + strain_hits + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if (ids_hits) then "--ids_hits" else ""} \
      ~{if (faa_gnu_zero) then "--faa_GNU_0" else ""} \
      ~{if (blastp) then "--blastp" else ""} \
      ~{if (output_blastp) then "--output_blastp" else ""} \
      ~{if (select_percent_value) then "-w" else ""} \
      ~{if (select_coverage_value) then "-c" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mk_database: "you have to provide path to faa file or a folder of\\nmultiple faa files for compression"
    database: "you have to provide path to your compressed database"
    pickle: "Save database in pickle format [Default only txt file]"
    sql: "Save database in SQL format for large Databases\\n[Default only txt file]"
    clusteredproteins_output_file: "[ROARY_CLUSTERED_PROTEINS], --roary_clustered_proteins [ROARY_CLUSTERED_PROTEINS]\\nclustered_proteins output file from roary to be used\\nwith -m"
    database_mode: "select a mode from 'ortholog' or 'basic' to be used\\nwith -d"
    ri: "[RARITY_INDEX], --rarity_index [RARITY_INDEX]\\nselect an ortholog variant rarity index (OVRI) cutoff\\nvalue in range (0-1)[0.045] for ortholog mode"
    output_folder: "Database output prefix to be created for results\\n(default: timestamped WhatsGNU_results in the current\\ndirectory)"
    force: "Force overwriting existing results folder assigned\\nwith -o (default: off)"
    prefix: "Prefix for output compressed database (default:\\nWhatsGNU_compressed_database)"
    top_genomes: "create a file of top 10 genomes with hits"
    strain_hits: "check how many hits you get from a particular\\nstrain,it has to be used with -t"
    metadata: "get the metadata composition of your hits, use the\\nmetadata_frequency.csv file produced by the WhatsGNU\\ncustomizer script"
    ids_hits: "create a file of each protein with locus_tags (ids) of\\nall hits from the database, large file (~ 1 Gb for\\n3000 pts)"
    faa_gnu_zero: "get a fasta (.faa) file of all proteins with GNU score\\nof zero"
    blastp: "run blastp on the proteins with GNU score of zero and\\nmodify the report with ortholog_info, blastp has to be\\ninstalled"
    output_blastp: "get the output report of blastp run, it has to be used\\nwith -b"
    select_percent_value: "[PERCENT_IDENTITY], --percent_identity [PERCENT_IDENTITY]\\nselect a blastp percent identity cutoff value [80],\\nrange(0,100)"
    select_coverage_value: "[PERCENT_COVERAGE], --percent_coverage [PERCENT_COVERAGE]\\nselect a blastp percent coverage cutoff value [80],\\nrange(0,100)"
    quiet: "No screen output [default OFF]"
  }
  output {
    File out_stdout = stdout()
    File out_clusteredproteins_output_file = "${in_clusteredproteins_output_file}"
    Directory out_output_folder = "${in_output_folder}"
  }
}