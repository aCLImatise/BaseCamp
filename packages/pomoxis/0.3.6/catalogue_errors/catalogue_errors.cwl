class: CommandLineTool
id: catalogue_errors.cwl
inputs:
- id: in_bed
  doc: ".bed file of reference regions to include. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --bed
- id: in_threads
  doc: 'Number of threads for parallel execution. (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_outdir
  doc: "Output directory. (default: error_catalogue)\n"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_bam
  doc: Input alignments (aligned to ref).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory. (default: error_catalogue)\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pomoxis:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- catalogue_errors
