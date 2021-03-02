version 1.0

task Digestiflowdemux {
  input {
    File? config
    String? demux_tool
    String? api_url
    String? api_token
    Boolean? log_api_token
    Boolean? api_read_only
    Boolean? only_post_message
    Boolean? force_demultiplexing
    Boolean? filter_folder_names
    String? drmaa
    String? cluster_config
    String? project_uuid
    String? cores
    Boolean? verbose
    Boolean? quiet
    Boolean? keep_work_dir
    Int? max_jobs_per_second
    Directory? work_dir
    File? job_script
    String? lane
    Int? tiles
    String out_dir
    String seq_dir
  }
  command <<<
    digestiflow_demux \
      ~{out_dir} \
      ~{seq_dir} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(demux_tool) then ("--demux-tool " +  '"' + demux_tool + '"') else ""} \
      ~{if defined(api_url) then ("--api-url " +  '"' + api_url + '"') else ""} \
      ~{if defined(api_token) then ("--api-token " +  '"' + api_token + '"') else ""} \
      ~{if (log_api_token) then "--log-api-token" else ""} \
      ~{if (api_read_only) then "--api-read-only" else ""} \
      ~{if (only_post_message) then "--only-post-message" else ""} \
      ~{if (force_demultiplexing) then "--force-demultiplexing" else ""} \
      ~{if (filter_folder_names) then "--filter-folder-names" else ""} \
      ~{if defined(drmaa) then ("--drmaa " +  '"' + drmaa + '"') else ""} \
      ~{if defined(cluster_config) then ("--cluster-config " +  '"' + cluster_config + '"') else ""} \
      ~{if defined(project_uuid) then ("--project-uuid " +  '"' + project_uuid + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (keep_work_dir) then "--keep-work-dir" else ""} \
      ~{if defined(max_jobs_per_second) then ("--max-jobs-per-second " +  '"' + max_jobs_per_second + '"') else ""} \
      ~{if defined(work_dir) then ("--work-dir " +  '"' + work_dir + '"') else ""} \
      ~{if defined(job_script) then ("--jobscript " +  '"' + job_script + '"') else ""} \
      ~{if defined(lane) then ("--lane " +  '"' + lane + '"') else ""} \
      ~{if defined(tiles) then ("--tiles " +  '"' + tiles + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Path to configuration TOML file to load."
    demux_tool: "Demultiplexing tool to use. Choices are Illumina's\\nbcl2fastq(2) and Picard"
    api_url: "URL to Digestiflow Web API"
    api_token: "API token to use for Digestiflow Web API"
    log_api_token: "Create log entry with API token (debug level; use only\\nwhen debugging as this has security implications)"
    api_read_only: "Do not write/update flowcell info to database"
    only_post_message: "Only create the success message."
    force_demultiplexing: "Force demultiplexing even if flow cell not marked as\\nready"
    filter_folder_names: "Filter folder names to those containing the vendor ID\\nof a flow cell that has been marked as ready for\\ndemultiplexing in the server."
    drmaa: "Pass as --drmaa argument to snakemake call (make sure\\nto define environment variable DRMAA_LIBRARY_PATH)."
    cluster_config: "Pass as --cluster-config to snakemake call."
    project_uuid: "Project UUID to register flowcell for"
    cores: "Degree of parallelism to use"
    verbose: "Increase verbosity"
    quiet: "Decrease verbosity"
    keep_work_dir: "Keep temporary working directory (useful only for\\ndebugging)"
    max_jobs_per_second: "Max jobs per second to submit, default is 10."
    work_dir: "Specify working directory (instead of using temporary\\none)"
    job_script: "Optional path to the jobscript to use when using\\nDRMAA."
    lane: "Select individual lanes for demultiplexing; default is\\nto use all for which the sample sheet provides\\ninformation; provide multiple times for selecting\\nmultiple lanes."
    tiles: "Select tile regex; provide multiple times for multiple\\nregexes with bcl2fastq. Picard will use the first\\ntile. Conflicts with --lane\\n"
    out_dir: "Path to output directory"
    seq_dir: "Path(s) to sequencer raw data directories"
  }
  output {
    File out_stdout = stdout()
  }
}