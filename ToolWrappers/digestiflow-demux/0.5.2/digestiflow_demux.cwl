class: CommandLineTool
id: digestiflow_demux.cwl
inputs:
- id: in_config
  doc: Path to configuration TOML file to load.
  type: File?
  inputBinding:
    prefix: --config
- id: in_demux_tool
  doc: "Demultiplexing tool to use. Choices are Illumina's\nbcl2fastq(2) and Picard"
  type: string?
  inputBinding:
    prefix: --demux-tool
- id: in_api_url
  doc: URL to Digestiflow Web API
  type: string?
  inputBinding:
    prefix: --api-url
- id: in_api_token
  doc: API token to use for Digestiflow Web API
  type: string?
  inputBinding:
    prefix: --api-token
- id: in_log_api_token
  doc: "Create log entry with API token (debug level; use only\nwhen debugging as\
    \ this has security implications)"
  type: boolean?
  inputBinding:
    prefix: --log-api-token
- id: in_api_read_only
  doc: Do not write/update flowcell info to database
  type: boolean?
  inputBinding:
    prefix: --api-read-only
- id: in_only_post_message
  doc: Only create the success message.
  type: boolean?
  inputBinding:
    prefix: --only-post-message
- id: in_force_demultiplexing
  doc: "Force demultiplexing even if flow cell not marked as\nready"
  type: boolean?
  inputBinding:
    prefix: --force-demultiplexing
- id: in_filter_folder_names
  doc: "Filter folder names to those containing the vendor ID\nof a flow cell that\
    \ has been marked as ready for\ndemultiplexing in the server."
  type: boolean?
  inputBinding:
    prefix: --filter-folder-names
- id: in_drmaa
  doc: "Pass as --drmaa argument to snakemake call (make sure\nto define environment\
    \ variable DRMAA_LIBRARY_PATH)."
  type: string?
  inputBinding:
    prefix: --drmaa
- id: in_cluster_config
  doc: Pass as --cluster-config to snakemake call.
  type: string?
  inputBinding:
    prefix: --cluster-config
- id: in_project_uuid
  doc: Project UUID to register flowcell for
  type: string?
  inputBinding:
    prefix: --project-uuid
- id: in_cores
  doc: Degree of parallelism to use
  type: string?
  inputBinding:
    prefix: --cores
- id: in_verbose
  doc: Increase verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Decrease verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_keep_work_dir
  doc: "Keep temporary working directory (useful only for\ndebugging)"
  type: boolean?
  inputBinding:
    prefix: --keep-work-dir
- id: in_max_jobs_per_second
  doc: Max jobs per second to submit, default is 10.
  type: long?
  inputBinding:
    prefix: --max-jobs-per-second
- id: in_work_dir
  doc: "Specify working directory (instead of using temporary\none)"
  type: Directory?
  inputBinding:
    prefix: --work-dir
- id: in_job_script
  doc: "Optional path to the jobscript to use when using\nDRMAA."
  type: File?
  inputBinding:
    prefix: --jobscript
- id: in_lane
  doc: "Select individual lanes for demultiplexing; default is\nto use all for which\
    \ the sample sheet provides\ninformation; provide multiple times for selecting\n\
    multiple lanes."
  type: string?
  inputBinding:
    prefix: --lane
- id: in_tiles
  doc: "Select tile regex; provide multiple times for multiple\nregexes with bcl2fastq.\
    \ Picard will use the first\ntile. Conflicts with --lane\n"
  type: long?
  inputBinding:
    prefix: --tiles
- id: in_out_dir
  doc: Path to output directory
  type: string
  inputBinding:
    position: 0
- id: in_seq_dir
  doc: Path(s) to sequencer raw data directories
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- digestiflow-demux
