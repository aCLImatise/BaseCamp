version 1.0

task VirsorterTrainmodel {
  input {
    Directory? working_dir
    File? viral_ftr_file
    File? nonviral_ftr_file
    Int? jobs
    Boolean? balanced
    Boolean? use_cond_a_off
    String? snake_make_args
  }
  command <<<
    virsorter train_model \
      ~{snake_make_args} \
      ~{if defined(working_dir) then ("--working-dir " +  '"' + working_dir + '"') else ""} \
      ~{if defined(viral_ftr_file) then ("--viral-ftrfile " +  '"' + viral_ftr_file + '"') else ""} \
      ~{if defined(nonviral_ftr_file) then ("--nonviral-ftrfile " +  '"' + nonviral_ftr_file + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (balanced) then "--balanced" else ""} \
      ~{if (use_cond_a_off) then "--use-conda-off" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    working_dir: "output directory  [required]"
    viral_ftr_file: "viral genome feature file for training  [required]"
    nonviral_ftr_file: "nonviral genome feature file for training\\n[required]"
    jobs: "number of threads for classier  [default: 8]"
    balanced: "random undersample the larger to the size of the\\nsmaller feature file  [default: False]"
    use_cond_a_off: "Stop using the conda envs (vs2.yaml) that come with\\nthis package and use what are installed in current\\nsystem; Only useful when you want to install\\ndependencies on your own with your own prefer\\nversions  [default: False]"
    snake_make_args: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_working_dir = "${in_working_dir}"
  }
}