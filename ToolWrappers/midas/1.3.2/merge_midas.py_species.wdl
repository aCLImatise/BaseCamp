version 1.0

task MergeMidaspySpecies {
  input {
    String? input_sample_output
    File? specify_one_followinglist
    File? path_reference_default
    Float? sample_depth
    Int? max_samples
    String outdir
  }
  command <<<
    merge_midas_py species \
      ~{outdir} \
      ~{if defined(input_sample_output) then ("-i " +  '"' + input_sample_output + '"') else ""} \
      ~{if defined(specify_one_followinglist) then ("-t " +  '"' + specify_one_followinglist + '"') else ""} \
      ~{if defined(path_reference_default) then ("-d " +  '"' + path_reference_default + '"') else ""} \
      ~{if defined(sample_depth) then ("--sample_depth " +  '"' + sample_depth + '"') else ""} \
      ~{if defined(max_samples) then ("--max_samples " +  '"' + max_samples + '"') else ""}
  >>>
  parameter_meta {
    input_sample_output: "Input to sample directories output by run_midas.py; see '-t' for details"
    specify_one_followinglist: "Specify one of the following:\\nlist: -i is a comma-separated list (ex: /samples/sample_1,/samples/sample_2)\\ndir: -i is a directory containing all samples (ex: /samples)\\nfile: -i is a file of paths to samples (ex: /sample_paths.txt)"
    path_reference_default: "Path to reference database\\nBy default the MIDAS_DB environmental variable is used"
    sample_depth: "Minimum per-sample marker-gene-depth for estimating species prevalence (1.0)"
    max_samples: "Maximum number of samples to process.\\nUseful for testing (use all)"
    outdir: "Directory for output files"
  }
  output {
    File out_stdout = stdout()
  }
}