version 1.0

task Arvrunpipelineinstance {
  input {
    Boolean? dry_run
    File? status_text
    File? status_json
    Boolean? no_wait
    Boolean? no_reuse
    Boolean? debug
    String? debug_level
    File? template
    String? instance
    Boolean? submit
    Boolean? run_pipeline_here
    Boolean? run_jobs_here
    Boolean? run_here
    String? description
    String? project_uuid
    String name_dot
  }
  command <<<
    arv_run_pipeline_instance \
      ~{name_dot} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(status_text) then ("--status-text " +  '"' + status_text + '"') else ""} \
      ~{if defined(status_json) then ("--status-json " +  '"' + status_json + '"') else ""} \
      ~{if (no_wait) then "--no-wait" else ""} \
      ~{if (no_reuse) then "--no-reuse" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(debug_level) then ("--debug-level " +  '"' + debug_level + '"') else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(instance) then ("--instance " +  '"' + instance + '"') else ""} \
      ~{if (submit) then "--submit" else ""} \
      ~{if (run_pipeline_here) then "--run-pipeline-here" else ""} \
      ~{if (run_jobs_here) then "--run-jobs-here" else ""} \
      ~{if (run_here) then "--run-here" else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(project_uuid) then ("--project-uuid " +  '"' + project_uuid + '"') else ""}
  >>>
  parameter_meta {
    dry_run: "Do not start any new jobs or wait for existing jobs to\\nfinish. Just find out whether jobs are finished,\\nqueued, or running for each component."
    status_text: "Store plain text status in given file. (Default:\\n/dev/stdout)"
    status_json: "Store json-formatted pipeline in given file. (Default:\\n/dev/null)"
    no_wait: "Do not wait for jobs to finish. Just look up status,\\nsubmit new jobs if needed, and exit."
    no_reuse: "Do not reuse existing jobs to satisfy pipeline\\ncomponents. Submit a new job for every component."
    debug: "Print extra debugging information on stderr."
    debug_level: "Set debug verbosity level."
    template: "UUID of pipeline template, or path to local pipeline\\ntemplate file."
    instance: "UUID of pipeline instance."
    submit: "Submit the pipeline instance to the server, and exit.\\nLet the Crunch dispatch service satisfy the components\\nby finding/running jobs."
    run_pipeline_here: "Manage the pipeline instance in-process. Submit jobs\\nto Crunch as needed. Do not exit until the pipeline\\nfinishes (or fails)."
    run_jobs_here: "Run jobs in the local terminal session instead of\\nsubmitting them to Crunch. Implies\\n--run-pipeline-here. Note: this results in a\\nsignificantly different job execution environment, and\\nsome Crunch features are not supported. It can be\\nnecessary to modify a pipeline in order to make it run\\nthis way."
    run_here: "Synonym for --run-jobs-here."
    description: "Description for the pipeline instance."
    project_uuid: "UUID of the project for the pipeline instance."
    name_dot: "component_name::param_name=param_value"
  }
  output {
    File out_stdout = stdout()
  }
}