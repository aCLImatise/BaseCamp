version 1.0

task KronosRun {
  input {
    String? job_scheduler
    File? components_dir
    File? drmaa_library_path
    String? pipeline_name
    File? input_samples
    Int? num_jobs
    File? kronos_pipeline
    Int? num_pipelines
    File? python_installation
    String? qsub_options
    String? run_id
    File? setup_file
    File? working_dir
    File? config_file
    Boolean? no_prefix
  }
  command <<<
    kronos run \
      ~{if defined(job_scheduler) then ("--job_scheduler " +  '"' + job_scheduler + '"') else ""} \
      ~{if defined(components_dir) then ("--components_dir " +  '"' + components_dir + '"') else ""} \
      ~{if defined(drmaa_library_path) then ("--drmaa_library_path " +  '"' + drmaa_library_path + '"') else ""} \
      ~{if defined(pipeline_name) then ("--pipeline_name " +  '"' + pipeline_name + '"') else ""} \
      ~{if defined(input_samples) then ("--input_samples " +  '"' + input_samples + '"') else ""} \
      ~{if defined(num_jobs) then ("--num_jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(kronos_pipeline) then ("--kronos_pipeline " +  '"' + kronos_pipeline + '"') else ""} \
      ~{if defined(num_pipelines) then ("--num_pipelines " +  '"' + num_pipelines + '"') else ""} \
      ~{if defined(python_installation) then ("--python_installation " +  '"' + python_installation + '"') else ""} \
      ~{if defined(qsub_options) then ("--qsub_options " +  '"' + qsub_options + '"') else ""} \
      ~{if defined(run_id) then ("--run_id " +  '"' + run_id + '"') else ""} \
      ~{if defined(setup_file) then ("--setup_file " +  '"' + setup_file + '"') else ""} \
      ~{if defined(working_dir) then ("--working_dir " +  '"' + working_dir + '"') else ""} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if (no_prefix) then "--no_prefix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    job_scheduler: "job scheduler used to manage jobs on the cluster"
    components_dir: "path to components_dir"
    drmaa_library_path: "path of drmaa library"
    pipeline_name: "pipeline name"
    input_samples: "path to the input samples file"
    num_jobs: "maximum number of simultaneous jobs per pipeline"
    kronos_pipeline: "path to kronos-made pipeline script."
    num_pipelines: "maximum number of simultaneous running pipelines"
    python_installation: "path to python executable"
    qsub_options: "native qsub specifications for the cluster in a single\\nstring"
    run_id: "pipeline run id"
    setup_file: "path to the setup file"
    working_dir: "path to the working_dir"
    config_file: "path to the config_file.yaml"
    no_prefix: "switch off the prefix that is added to all the output\\nfiles.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}