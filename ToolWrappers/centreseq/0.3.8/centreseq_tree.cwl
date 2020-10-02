class: CommandLineTool
id: ../../../centreseq_tree.cwl
inputs:
- id: in_summary_report
  doc: "Path to summary_report.csv file produced by the\ncore pipeline  [required]"
  type: File
  inputBinding:
    prefix: --summary-report
- id: in_pro_kk_a_dir
  doc: "Path to the Prokka output directory generated by\nthe core pipeline  [required]"
  type: File
  inputBinding:
    prefix: --prokka-dir
- id: in_outdir
  doc: "Root directory to store all output files\n[required]"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_percentile
  doc: "Filter summary report by n_members to the top nth\npercentile. Defaults to\
    \ 99.0."
  type: double
  inputBinding:
    prefix: --percentile
- id: in_n_cpu
  doc: "Number of CPUs to dedicate to parallelizable\nsteps of the pipeline.Will take\
    \ all available\nCPUs - 1 if not specified."
  type: long
  inputBinding:
    prefix: --n-cpu
- id: in_verbose
  doc: Set this flag to enable more verbose logging.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pro_kk_a_dir
  doc: "Path to the Prokka output directory generated by\nthe core pipeline  [required]"
  type: File
  outputBinding:
    glob: $(inputs.in_pro_kk_a_dir)
- id: out_outdir
  doc: "Root directory to store all output files\n[required]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- centreseq
- tree