version 1.0

task PhyluceProbeRunMultipleLastzsSqlite {
  input {
    String? db
    String? append
    Directory? directory_store_files
    File? probe_file
    Array[String] chromo_list
    Array[String] scaffold_list
    Boolean? no_dir
    File? genome_base_path
    String? coverage
    String? identity
    Directory directory
  }
  command <<<
    phyluce_probe_run_multiple_lastzs_sqlite \
      ~{directory} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(append) then ("--append " +  '"' + append + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if defined(probe_file) then ("--probefile " +  '"' + probe_file + '"') else ""} \
      ~{if defined(chromo_list) then ("--chromolist " +  '"' + chromo_list + '"') else ""} \
      ~{if defined(scaffold_list) then ("--scaffoldlist " +  '"' + scaffold_list + '"') else ""} \
      ~{if (no_dir) then "--no-dir" else ""} \
      ~{if defined(genome_base_path) then ("--genome-base-path " +  '"' + genome_base_path + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "The database in which to store results (also use"
    append: "adding results to an existing database)"
    directory_store_files: "The directory in which to store the LASTZ files"
    probe_file: "The probe file to align against the sequences"
    chromo_list: "The list of organisms with genome sequences in\\nchromosomes"
    scaffold_list: "The list of organisms with genome sequences in\\nscaffolds/contigs"
    no_dir: "If genome sequences are not in their own abbr."
    genome_base_path: "The base path to a directory containing genomes\\nsequences"
    coverage: "The default coverage to search for using lastz"
    identity: "The default percent identity to search for using lastz"
    directory: "--cores CORES         The number of compute cores to use"
  }
  output {
    File out_stdout = stdout()
  }
}