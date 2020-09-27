version 1.0

task MergeMidaspyGenes {
  input {
    String? input_sample_output
    File? specify_one_followinglist
    File? path_reference_default
    Int? min_samples
    String? species_id
    Int? max_species
    Float? sample_depth
    Int? max_samples
    String? cluster_pid
    Float? min_copy
    String outdir
  }
  command <<<
    merge_midas_py genes \
      ~{outdir} \
      ~{if defined(input_sample_output) then ("-i " +  '"' + input_sample_output + '"') else ""} \
      ~{if defined(specify_one_followinglist) then ("-t " +  '"' + specify_one_followinglist + '"') else ""} \
      ~{if defined(path_reference_default) then ("-d " +  '"' + path_reference_default + '"') else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(species_id) then ("--species_id " +  '"' + species_id + '"') else ""} \
      ~{if defined(max_species) then ("--max_species " +  '"' + max_species + '"') else ""} \
      ~{if defined(sample_depth) then ("--sample_depth " +  '"' + sample_depth + '"') else ""} \
      ~{if defined(max_samples) then ("--max_samples " +  '"' + max_samples + '"') else ""} \
      ~{if defined(cluster_pid) then ("--cluster_pid " +  '"' + cluster_pid + '"') else ""} \
      ~{if defined(min_copy) then ("--min_copy " +  '"' + min_copy + '"') else ""}
  >>>
  parameter_meta {
    input_sample_output: "Input to sample directories output by run_midas.py; see '-t' for details"
    specify_one_followinglist: "Specify one of the following:\\nlist: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2)\\ndir: -i is a directory containing all samples (ex: /samples)\\nfile: -i is a file of paths to samples (ex: /sample_paths.txt)"
    path_reference_default: "Path to reference database.\\nBy default, the MIDAS_DB environmental variable is used"
    min_samples: "All species with >= MIN_SAMPLES (1)"
    species_id: "Comma-separated list of species ids"
    max_species: "Maximum number of species to merge. Useful for testing (use all)"
    sample_depth: "Minimum read-depth across all genes with non-zero coverage (1.0)"
    max_samples: "Maximum number of samples to process. Useful for testing (use all)"
    cluster_pid: "In the database, pan-genomes are defined at 6 different % identity clustering cutoffs.\\nCLUSTER_PID allows you to quantify gene content for any of these sets of gene clusters.\\nBy default, gene content is reported for genes clustered at 95% identity"
    min_copy: "Genes >= MIN_COPY are classified as present\\nGenes < MIN_COPY are classified as absent (0.35)"
    outdir: "Directory for output files.\\nA subdirectory will be created for each species_id"
  }
  output {
    File out_stdout = stdout()
  }
}