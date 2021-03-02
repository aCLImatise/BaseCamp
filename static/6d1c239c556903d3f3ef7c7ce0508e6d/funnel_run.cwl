class: CommandLineTool
id: funnel_run.cwl
inputs:
- id: in_server
  doc: 'Address of Funnel server. Default: http://localhost:8000'
  type: boolean?
  inputBinding:
    prefix: --server
- id: in_container
  doc: 'Containter the command runs in. Default: alpine'
  type: boolean?
  inputBinding:
    prefix: --container
- id: in_sh
  doc: "Command to be run. This command will be run with the shell: 'sh -c \"<sh>\"\
    '.\nThis is the default execution mode for commands passed as args."
  type: boolean?
  inputBinding:
    prefix: --sh
- id: in_exec
  doc: Command to be run. This command will not be evaulated by 'sh'.
  type: boolean?
  inputBinding:
    prefix: --exec
- id: in_print
  doc: Print the task without running it.
  type: boolean?
  inputBinding:
    prefix: --print
- id: in_scatter
  doc: Scatter multiple tasks, one per row of the given file.
  type: boolean?
  inputBinding:
    prefix: --scatter
- id: in_wait
  doc: Wait for the task to finish before exiting.
  type: boolean?
  inputBinding:
    prefix: --wait
- id: in_wait_for
  doc: Wait for the given task IDs before running the task.
  type: boolean?
  inputBinding:
    prefix: --wait-for
- id: in_in
  doc: Input file e.g. varname=/path/to/input.txt
  type: boolean?
  inputBinding:
    prefix: --in
- id: in_in_dir
  doc: Input directory e.g. varname=/path/to/dir
  type: boolean?
  inputBinding:
    prefix: --in-dir
- id: in_out
  doc: Output file e.g. varname=/path/to/output.txt
  type: File?
  inputBinding:
    prefix: --out
- id: in_out_dir
  doc: Output directory e.g. varname=/path/to/dir
  type: File?
  inputBinding:
    prefix: --out-dir
- id: in_content
  doc: Include input file content from a file e.g. varname=/path/to/in.txt
  type: boolean?
  inputBinding:
    prefix: --content
- id: in_stdin
  doc: File to write to stdin to the command.
  type: boolean?
  inputBinding:
    prefix: --stdin
- id: in_stdout
  doc: File to write to stdout of the command.
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_stderr
  doc: File to write to stderr of the command.
  type: boolean?
  inputBinding:
    prefix: --stderr
- id: in_cpu
  doc: Number of CPUs to request.
  type: boolean?
  inputBinding:
    prefix: --cpu
- id: in_ram
  doc: Amount of RAM to request, in GB.
  type: boolean?
  inputBinding:
    prefix: --ram
- id: in_disk
  doc: Amount of disk space to request, in GB.
  type: boolean?
  inputBinding:
    prefix: --disk
- id: in_zone
  doc: Require task be scheduled in certain zones.
  type: boolean?
  inputBinding:
    prefix: --zone
- id: in_preemptible
  doc: task to be scheduled on preemptible workers.
  type: string?
  inputBinding:
    prefix: --preemptible
- id: in_name
  doc: Task name.
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_description
  doc: Task description.
  type: boolean?
  inputBinding:
    prefix: --description
- id: in_tag
  doc: Arbitrary key-value tags, e.g. tagname=tagvalue
  type: boolean?
  inputBinding:
    prefix: --tag
- id: in_env
  doc: Environment variables, e.g. envvar=foo
  type: boolean?
  inputBinding:
    prefix: --env
- id: in_workdir
  doc: Containter working directory.
  type: boolean?
  inputBinding:
    prefix: --workdir
- id: in_vol
  doc: Define a volume on the container.
  type: boolean?
  inputBinding:
    prefix: --vol
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file e.g. varname=/path/to/output.txt
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_dir
  doc: Output directory e.g. varname=/path/to/dir
  type: File?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- funnel
- run
