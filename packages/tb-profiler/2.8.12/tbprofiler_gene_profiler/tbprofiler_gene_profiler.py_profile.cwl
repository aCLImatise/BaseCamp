class: CommandLineTool
id: tbprofiler_gene_profiler.py_profile.cwl
inputs:
- id: in_bam
  doc: 'BAM file (default: None)'
  type: File?
  inputBinding:
    prefix: --bam
- id: in_prefix
  doc: "Sample prefix for all results generated (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: 'Output file suffix (default: .results.json)'
  type: File?
  inputBinding:
    prefix: --suffix
- id: in_platform
  doc: 'NGS Platform used to generate data (default: illumina)'
  type: string?
  inputBinding:
    prefix: --platform
- id: in_caller
  doc: 'Variant calling tool to use. (default: bcftools)'
  type: string?
  inputBinding:
    prefix: --caller
- id: in_db
  doc: 'Mutation panel name (default: tbdb)'
  type: string?
  inputBinding:
    prefix: --db
- id: in_external_db
  doc: "Path to db files prefix (overrides \"--db\" parameter)\n(default: None)"
  type: File?
  inputBinding:
    prefix: --external_db
- id: in_threads
  doc: "Threads to use (default: 1)\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_suffix
  doc: 'Output file suffix (default: .results.json)'
  type: File?
  outputBinding:
    glob: $(inputs.in_suffix)
hints: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_gene_profiler.py
- profile
