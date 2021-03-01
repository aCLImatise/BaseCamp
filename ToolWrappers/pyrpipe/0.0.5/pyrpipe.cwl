class: CommandLineTool
id: pyrpipe.cwl
inputs:
- id: in_threads
  doc: Num processes/threads to use Default:mp.cpu_count()
  type: long?
  inputBinding:
    prefix: --threads
- id: in_max_memory
  doc: 'Max memory to use (in GB) default: None'
  type: long?
  inputBinding:
    prefix: --max-memory
- id: in_verbose
  doc: "Print pyrpipe_engine's stdout and stderr Default:"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_force
  doc: "Force execution of commands if their target files\nalready exist Default:\
    \ False"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_safe_mode
  doc: "Disable file deletions through pyrpipe_engine module\nDefault: False"
  type: boolean?
  inputBinding:
    prefix: --safe-mode
- id: in_no_logs
  doc: 'Disable pyrpipe logs Default: False'
  type: boolean?
  inputBinding:
    prefix: --no-logs
- id: in_param_dir
  doc: "Directory containing parameter yaml files Default:\n./params"
  type: Directory?
  inputBinding:
    prefix: --param-dir
- id: in_logs_dir
  doc: 'Directory for saving log files Default: ./pyrpipe_logs'
  type: Directory?
  inputBinding:
    prefix: --logs-dir
- id: in_multi_qc
  doc: 'Autorun MultiQC after execution Default: False'
  type: boolean?
  inputBinding:
    prefix: --multiqc
- id: in_in
  doc: The input python script
  type: File?
  inputBinding:
    prefix: --in
- id: in_false
  doc: --dry-run             Only print pyrpipe's commands and not execute anything
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyrpipe:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- pyrpipe
