class: CommandLineTool
id: stats_from_bam.cwl
inputs:
- id: in_bed
  doc: ".bed file of reference regions to include. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --bed
- id: in_all_alignments
  doc: "Include secondary and supplementary alignments.\n(default: False)"
  type: string?
  inputBinding:
    prefix: --all_alignments
- id: in_output
  doc: "Output alignment stats to file instead of stdout.\n(default: <_io.TextIOWrapper\
    \ name='<stdout>' mode='w'\nencoding='utf-8'>)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_summary
  doc: "Output summary to file instead of stderr. (default:\n<_io.TextIOWrapper name='<stderr>'\
    \ mode='w'\nencoding='utf-8'>)"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_threads
  doc: "Number of threads for parallel processing. (default:\n1)\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output alignment stats to file instead of stdout.\n(default: <_io.TextIOWrapper\
    \ name='<stdout>' mode='w'\nencoding='utf-8'>)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_summary
  doc: "Output summary to file instead of stderr. (default:\n<_io.TextIOWrapper name='<stderr>'\
    \ mode='w'\nencoding='utf-8'>)"
  type: File?
  outputBinding:
    glob: $(inputs.in_summary)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pomoxis:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- stats_from_bam
