version 1.0

task RunPanacotapyAlign {
  input {
    String? core_persistent_genome
    File? file_containing_list
    File? name_dataset_aligned
    File? path_folder_containing
    Directory? output_directory_saved
    Int? threads
    Boolean? force
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    run_panacota_py align \
      ~{if defined(core_persistent_genome) then ("-c " +  '"' + core_persistent_genome + '"') else ""} \
      ~{if defined(file_containing_list) then ("-l " +  '"' + file_containing_list + '"') else ""} \
      ~{if defined(name_dataset_aligned) then ("-n " +  '"' + name_dataset_aligned + '"') else ""} \
      ~{if defined(path_folder_containing) then ("-d " +  '"' + path_folder_containing + '"') else ""} \
      ~{if defined(output_directory_saved) then ("-o " +  '"' + output_directory_saved + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panacota:1.2.0--py_0"
  }
  parameter_meta {
    core_persistent_genome: "Core or persistent genome whose families must be aligned."
    file_containing_list: "File containing the list of all the genomes you want to\\nalign from their core/persistent families. 1 genome per\\nline: it can be the LSTINFO-<list_file>.lst file of\\n'PanACoTA annotate' module. Here, only the first column\\n(genome name without extension) will be used. The final\\nalignment file will contain 1 alignment per genome in\\nthis file."
    name_dataset_aligned: "Name of the dataset which will be aligned (for example,\\nSAEN1234 for 1234 Salmonella enterica genomes). This name\\nwill be used to name the alignment file."
    path_folder_containing: "Path to the folder containing the directories 'Proteins'\\nand 'Genes', created by 'PanACoTA annotate'."
    output_directory_saved: "Output directory, where all results must be saved"
    threads: "add this option if you want to parallelize on several\\nthreads. Indicate on how many threads you want to\\nparallelize. By default, it uses 1 thread. Put 0 if you\\nwant to use all threads of your computer."
    force: "Force run: Add this option if you want to redo all\\nalignments for all families, even if their result file\\nalready exists. Without this option, if an alignment file\\nalready exists, it will be used for the next step. If you\\nwant to redo only a given alignment, just delete its\\nfile, without using this option."
    verbose: "Increase verbosity in stdout/stderr."
    quiet: "Do not display anything to stdout/stderr. log files will\\nstill be created."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_saved = "${in_output_directory_saved}"
  }
}