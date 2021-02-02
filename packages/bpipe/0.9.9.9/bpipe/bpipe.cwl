class: CommandLineTool
id: ../../../bpipe.cwl
inputs:
- id: in_auto_archive
  doc: "clean up all internal files after run\ninto given archive"
  type: string
  inputBinding:
    prefix: --autoarchive
- id: in_branch
  doc: "Comma separated list of branches to\nlimit execution to"
  type: string
  inputBinding:
    prefix: --branch
- id: in_dir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --dir
- id: in_filename
  doc: output file name of report
  type: File
  inputBinding:
    prefix: --filename
- id: in_resource
  doc: <resource=value>   place limit on named resource
  type: boolean
  inputBinding:
    prefix: --resource
- id: in_interval
  doc: "the default genomic interval to execute\npipeline for (samtools format)"
  type: string
  inputBinding:
    prefix: --interval
- id: in_memory
  doc: "maximum memory in MB, or specified as\n<n>GB or <n>MB"
  type: string
  inputBinding:
    prefix: --memory
- id: in_threads
  doc: maximum threads
  type: string
  inputBinding:
    prefix: --threads
- id: in_param
  doc: "<param=value>         defines a pipeline parameter, or file of\nparamaters\
    \ via @<file>"
  type: boolean
  inputBinding:
    prefix: --param
- id: in_source
  doc: "Load the given pipeline file(s) before\nrunning / executing"
  type: File
  inputBinding:
    prefix: --source
- id: in_test
  doc: test mode
  type: boolean
  inputBinding:
    prefix: --test
- id: in_until
  doc: run until stage given
  type: string
  inputBinding:
    prefix: --until
- id: in_verbose
  doc: print internal logging to standard error
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_yes
  doc: answer yes to any prompts or questions
  type: boolean
  inputBinding:
    prefix: --yes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dir
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_dir)
- id: out_filename
  doc: output file name of report
  type: File
  outputBinding:
    glob: $(inputs.in_filename)
cwlVersion: v1.1
baseCommand:
- bpipe
