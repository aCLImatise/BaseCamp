class: CommandLineTool
id: bpipe.cwl
inputs:
- id: auto_archive
  doc: clean up all internal files after run into given archive
  type: string
  inputBinding:
    prefix: --autoarchive
- id: branch
  doc: Comma separated list of branches to limit execution to
  type: string
  inputBinding:
    prefix: --branch
- id: dir
  doc: output directory
  type: string
  inputBinding:
    prefix: --dir
- id: filename
  doc: output file name of report
  type: string
  inputBinding:
    prefix: --filename
- id: resource
  doc: <resource=value>   place limit on named resource
  type: boolean
  inputBinding:
    prefix: --resource
- id: interval
  doc: the default genomic interval to execute pipeline for (samtools format)
  type: string
  inputBinding:
    prefix: --interval
- id: memory
  doc: maximum memory in MB, or specified as <n>GB or <n>MB
  type: string
  inputBinding:
    prefix: --memory
- id: threads
  doc: maximum threads
  type: string
  inputBinding:
    prefix: --threads
- id: param
  doc: <param=value>         defines a pipeline parameter, or file of paramaters via
    @<file>
  type: boolean
  inputBinding:
    prefix: --param
- id: report
  doc: generate an HTML report / documentation for pipeline
  type: boolean
  inputBinding:
    prefix: --report
- id: report
  doc: generate report using named template
  type: string
  inputBinding:
    prefix: --report
- id: source
  doc: Load the given pipeline file(s) before running / executing
  type: string
  inputBinding:
    prefix: --source
- id: test
  doc: test mode
  type: boolean
  inputBinding:
    prefix: --test
- id: until
  doc: run until stage given
  type: string
  inputBinding:
    prefix: --until
- id: verbose
  doc: print internal logging to standard error
  type: boolean
  inputBinding:
    prefix: --verbose
- id: yes
  doc: answer yes to any prompts or questions
  type: boolean
  inputBinding:
    prefix: --yes
outputs: []
cwlVersion: v1.1
baseCommand:
- bpipe
