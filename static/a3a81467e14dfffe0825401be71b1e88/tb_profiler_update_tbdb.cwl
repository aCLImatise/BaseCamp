class: CommandLineTool
id: tb_profiler_update_tbdb.cwl
inputs:
- id: in_seqname
  doc: 'Mutation panel name (default: Chromosome)'
  type: string?
  inputBinding:
    prefix: --seqname
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:3.0.2--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tb-profiler
- update_tbdb
