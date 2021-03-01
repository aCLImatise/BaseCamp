version 1.0

task RunPanacotapyPangenome {
  input {
    File? file_containing_list
    Int? name_dataset_clustered
    File? path_folder_filescorresponding
    Directory? output_directory_savedincluding
    Float? minimum_sequence_identity
    File? use_option_you_want_give
    String? choose_clustering_mode
    Directory? use_option_you_want_save
    Int? threads
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    run_panacota_py pangenome \
      ~{if defined(file_containing_list) then ("-l " +  '"' + file_containing_list + '"') else ""} \
      ~{if defined(name_dataset_clustered) then ("-n " +  '"' + name_dataset_clustered + '"') else ""} \
      ~{if defined(path_folder_filescorresponding) then ("-d " +  '"' + path_folder_filescorresponding + '"') else ""} \
      ~{if defined(output_directory_savedincluding) then ("-o " +  '"' + output_directory_savedincluding + '"') else ""} \
      ~{if defined(minimum_sequence_identity) then ("-i " +  '"' + minimum_sequence_identity + '"') else ""} \
      ~{if defined(use_option_you_want_give) then ("-f " +  '"' + use_option_you_want_give + '"') else ""} \
      ~{if defined(choose_clustering_mode) then ("-c " +  '"' + choose_clustering_mode + '"') else ""} \
      ~{if defined(use_option_you_want_save) then ("-s " +  '"' + use_option_you_want_save + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panacota:1.2.0--py_0"
  }
  parameter_meta {
    file_containing_list: "File containing the list of all genomes to include in the\\npan-genome, 1 genome per line: it can be the\\nLSTINFO-<list_file>.lst file of 'PanACoTA annotate'\\nmodule.Here, only the first column (genome name without\\nextension) will be used. All proteins of all these\\ngenomes will be concatenated in a file called\\n<dataset_name>.All.prt. The column header must be\\n'gembase_name'."
    name_dataset_clustered: "Name of the dataset which will be clustered (for example,\\nSAEN1234 for 1234 Salmonella enterica genomes). This name\\nwill be used to name the protein databank, a well as the\\npangenome files."
    path_folder_filescorresponding: "Path to the folder containing all protein files\\ncorresponding to the genomes of the dataset (output\\ndirectory 'Proteins' of 'PanACoTA annotate' module)."
    output_directory_savedincluding: "Output directory, where all results must be saved\\n(including tmp folder)"
    minimum_sequence_identity: "Minimum sequence identity to be considered in the same\\ncluster (float between 0 and 1). Default is 0.8."
    use_option_you_want_give: "Use this option if you want to give the name of the\\npangenome output file (without path). Otherwise, by\\ndefault, it is called PanGenome-mmseq_<given_dataset_name\\n>.All.prt_<information_on_parameters>.lst"
    choose_clustering_mode: "Choose the clustering mode: 0 for 'set cover', 1 for\\n'single-linkage', 2 for 'CD-Hit'. Default is 'single-\\nlinkage' (1)"
    use_option_you_want_save: "use this option if you want to save the concatenated\\nprotein databank in another directory than the one\\ncontaining all individual protein files ('Proteins'\\nfolder)."
    threads: "add this option if you want to parallelize on several\\nthreads. Indicate on how many threads you want to\\nparallelize. By default, it uses 1 thread. Put 0 if you\\nwant to use all threads of your computer."
    verbose: "Increase verbosity in stdout/stderr."
    quiet: "Do not display anything to stdout/stderr. log files will\\nstill be created."
  }
  output {
    File out_stdout = stdout()
    File out_path_folder_filescorresponding = "${in_path_folder_filescorresponding}"
    Directory out_output_directory_savedincluding = "${in_output_directory_savedincluding}"
    File out_use_option_you_want_give = "${in_use_option_you_want_give}"
  }
}