version 1.0

task PhyluceProbeRunMultipleLastzsSqlite {
  input {
    String? db
    String? directory_store_files
    String? probe_file
    Array[String] chromo_list
    Array[String] scaffold_list
    Boolean? append
    Boolean? no_dir
    String? cores
    String? genome_base_path
    String? coverage
    String? identity
  }
  command <<<
    phyluce_probe_run_multiple_lastzs_sqlite \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if defined(probe_file) then ("--probefile " +  '"' + probe_file + '"') else ""} \
      ~{if defined(chromo_list) then ("--chromolist " +  '"' + chromo_list + '"') else ""} \
      ~{if defined(scaffold_list) then ("--scaffoldlist " +  '"' + scaffold_list + '"') else ""} \
      ~{true="--append" false="" append} \
      ~{true="--no-dir" false="" no_dir} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(genome_base_path) then ("--genome-base-path " +  '"' + genome_base_path + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""}
  >>>
  parameter_meta {
    db: "The database in which to store results (also use --append if adding results to an existing database)"
    directory_store_files: "The directory in which to store the LASTZ files"
    probe_file: "The probe file to align against the sequences"
    chromo_list: "The list of organisms with genome sequences in chromosomes"
    scaffold_list: "The list of organisms with genome sequences in scaffolds/contigs"
    append: "Insert results to an existing database"
    no_dir: "If genome sequences are not in their own abbr. directory"
    cores: "The number of compute cores to use"
    genome_base_path: "The base path to a directory containing genomes sequences"
    coverage: "The default coverage to search for using lastz"
    identity: "The default percent identity to search for using lastz"
  }
}