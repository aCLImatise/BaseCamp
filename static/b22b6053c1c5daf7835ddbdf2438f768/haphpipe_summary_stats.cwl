class: CommandLineTool
id: haphpipe_summary_stats.cwl
inputs:
- id: in_dir_list
  doc: "List of directories which include the required files,\none on each line"
  type: string?
  inputBinding:
    prefix: --dir_list
- id: in_ph_list
  doc: "List of directories which include haplotype summary\nfiles, one on each line"
  type: string?
  inputBinding:
    prefix: --ph_list
- id: in_amplicons
  doc: 'Amplicons used in assembly (default: False)'
  type: boolean?
  inputBinding:
    prefix: --amplicons
- id: in_outdir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: "Do not write output to console (silence stdout and\nstderr) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_file
  doc: Name for log file (output)
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_log_file
  doc: Name for log file (output)
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/haphpipe:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- haphpipe
- summary_stats
