class: CommandLineTool
id: parallel_fastq.cwl
inputs:
- id: in_run_jobs_parallel
  doc: Run n jobs in parallel
  type: string?
  inputBinding:
    prefix: -j
- id: in_keep_same_order
  doc: Keep same order
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_multiple_arguments_context
  doc: Multiple arguments with context replace
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_col_sep
  doc: Split input on regexp for positional replacements
  type: string?
  inputBinding:
    prefix: --colsep
- id: in_example_fooserverexamplecom
  doc: 'Example: foo@server.example.com'
  type: string?
  inputBinding:
    prefix: -S
- id: in_slf
  doc: ..        Use ~/.parallel/sshloginfile as the list of sshlogins
  type: boolean?
  inputBinding:
    prefix: --slf
- id: in_trc
  doc: .bar    Shorthand for --transfer --return {}.bar --cleanup
  type: string?
  inputBinding:
    prefix: --trc
- id: in_on_all
  doc: Run the given command with argument on all sshlogins
  type: boolean?
  inputBinding:
    prefix: --onall
- id: in_non_all
  doc: Run the given command with no arguments on all sshlogins
  type: boolean?
  inputBinding:
    prefix: --nonall
- id: in_pipe
  doc: Split stdin (standard input) to multiple jobs.
  type: boolean?
  inputBinding:
    prefix: --pipe
- id: in_rec_end
  doc: Record end separator for --pipe.
  type: string?
  inputBinding:
    prefix: --recend
- id: in_rec_start
  doc: Record start separator for --pipe.
  type: string?
  inputBinding:
    prefix: --recstart
- id: in_parallel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/last:1219--h2e03b76_0
cwlVersion: v1.1
baseCommand:
- parallel-fastq
