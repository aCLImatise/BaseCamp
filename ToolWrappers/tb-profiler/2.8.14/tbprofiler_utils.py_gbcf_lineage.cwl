class: CommandLineTool
id: tbprofiler_utils.py_gbcf_lineage.cwl
inputs:
- id: in_prefix
  doc: 'Sample prefix (default: tbprofiler)'
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_out_fmt
  doc: 'Output format (default: json)'
  type: string?
  inputBinding:
    prefix: --outfmt
- id: in_db
  doc: "Full path to mutation database json file to use\n(default: TBProfiler panel)\
    \ (default: drdb_v2)\n"
  type: File?
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tbprofiler_utils.py
- gbcf_lineage
