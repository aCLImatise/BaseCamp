version 1.0

task MergeMidaspySpecies {
  input {
    String? input_sample_directories
    File? specify_one_ex
    File? path_reference_databaseby
    Float? sample_depth
    Int? max_samples
    String outdir
  }
  command <<<
    merge_midas_py species \
      ~{outdir} \
      ~{if defined(input_sample_directories) then ("-i " +  '"' + input_sample_directories + '"') else ""} \
      ~{if defined(specify_one_ex) then ("-t " +  '"' + specify_one_ex + '"') else ""} \
      ~{if defined(path_reference_databaseby) then ("-d " +  '"' + path_reference_databaseby + '"') else ""} \
      ~{if defined(sample_depth) then ("--sample_depth " +  '"' + sample_depth + '"') else ""} \
      ~{if defined(max_samples) then ("--max_samples " +  '"' + max_samples + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sample_directories: "Input to sample directories output by run_midas.py; see '-t' for details"
    specify_one_ex: "Specify one of the following:\\nlist: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2)\\ndir: -i is a directory containing all samples (ex: /samples)\\nfile: -i is a file of paths to samples (ex: /sample_paths.txt)"
    path_reference_databaseby: "Path to reference database\\nBy default the MIDAS_DB environmental variable is used"
    sample_depth: "Minimum per-sample marker-gene-depth for estimating species prevalence (1.0)"
    max_samples: "Maximum number of samples to process.\\nUseful for testing (use all)"
    outdir: "Directory for output files"
  }
  output {
    File out_stdout = stdout()
  }
}