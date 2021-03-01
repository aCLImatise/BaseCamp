version 1.0

task Pygmes {
  input {
    File? path_tobin_folder
    File? path_output_folder
    File? db
    Boolean? no_clean
    Boolean? cleanup
    Int? n_cores
    Boolean? run_metaegnomic_mode
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    pygmes \
      ~{if defined(path_tobin_folder) then ("--input " +  '"' + path_tobin_folder + '"') else ""} \
      ~{if defined(path_output_folder) then ("--output " +  '"' + path_output_folder + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (no_clean) then "--noclean" else ""} \
      ~{if (cleanup) then "--cleanup" else ""} \
      ~{if defined(n_cores) then ("--ncores " +  '"' + n_cores + '"') else ""} \
      ~{if (run_metaegnomic_mode) then "--meta" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_tobin_folder: "path to the fasta file, or in metagenome mode path to\\nbin folder"
    path_output_folder: "Path to the output folder"
    db: "Path to the diamond DB"
    no_clean: "GeneMark-ES needs clean fasta headers and will fail if\\nyou dont proveide them. Set this flag if you don't\\nwant pygmes to clean your headers"
    cleanup: "Delete everything but the output files"
    n_cores: "Number of threads to use with GeneMark-ES and Diamond"
    run_metaegnomic_mode: "Run in metaegnomic mode"
    quiet: "Silcence most output"
    debug: "Debug and thus ignore safety"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_folder = "${in_path_output_folder}"
  }
}