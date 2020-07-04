version 1.0

task Pygmes {
  input {
    String? path_fasta_file
    String? path_output_folder
    String? db
    Boolean? no_clean
    String? n_cores
    Boolean? run_metaegnomic_mode
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    pygmes \
      ~{if defined(path_fasta_file) then ("--input " +  '"' + path_fasta_file + '"') else ""} \
      ~{if defined(path_output_folder) then ("--output " +  '"' + path_output_folder + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{true="--noclean" false="" no_clean} \
      ~{if defined(n_cores) then ("--ncores " +  '"' + n_cores + '"') else ""} \
      ~{true="--meta" false="" run_metaegnomic_mode} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    path_fasta_file: "path to the fasta file, or in metagenome mode path to bin folder"
    path_output_folder: "Path to the output folder"
    db: "Path to the diamond DB"
    no_clean: "GeneMark-ES needs clean fasta headers and will fail if you dont proveide them. Set this flag if you don't want pygmes to clean your headers"
    n_cores: "Number of threads to use with GeneMark-ES and Diamond"
    run_metaegnomic_mode: "Run in metaegnomic mode"
    quiet: "Silcence most output"
    debug: "Debug and thus ignore safety"
  }
}