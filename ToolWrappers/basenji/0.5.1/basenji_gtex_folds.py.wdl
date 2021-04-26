version 1.0

task BasenjiGtexFoldspy {
  input {
    String? alt
    Int? number_crossfold_rounds
    String? name
    Int? slurm_queue_run
    Directory? reference_directory_statistical
    String exp_dir
    String params_file
    String data_dir
  }
  command <<<
    basenji_gtex_folds_py \
      ~{exp_dir} \
      ~{params_file} \
      ~{data_dir} \
      ~{if defined(alt) then ("--alt " +  '"' + alt + '"') else ""} \
      ~{if defined(number_crossfold_rounds) then ("-c " +  '"' + number_crossfold_rounds + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(slurm_queue_run) then ("-q " +  '"' + slurm_queue_run + '"') else ""} \
      ~{if defined(reference_directory_statistical) then ("-r " +  '"' + reference_directory_statistical + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    alt: "Statistical test alternative [Default: two-sided]"
    number_crossfold_rounds: "Number of cross-fold rounds [Default:1]"
    name: "SLURM name prefix [Default: test]"
    slurm_queue_run: "SLURM queue on which to run the jobs [Default:\\ngtx1080ti]"
    reference_directory_statistical: "Reference directory for statistical tests"
    exp_dir: ""
    params_file: ""
    data_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}