class: CommandLineTool
id: ppanggolin_draw.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_output
  doc: "Output directory (default:\nppanggolin_output_DATE2021-03-08_HOUR12.47.14_PID1327)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_tile_plot
  doc: 'draw the tile plot of the pangenome (default: False)'
  type: boolean?
  inputBinding:
    prefix: --tile_plot
- id: in_no_cloud
  doc: "Do not draw the cloud in the tile plot (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --nocloud
- id: in_soft_core
  doc: 'Soft core threshold to use (default: 0.95)'
  type: double?
  inputBinding:
    prefix: --soft_core
- id: in_u_curve
  doc: 'draw the U-curve of the pangenome (default: False)'
  type: boolean?
  inputBinding:
    prefix: --ucurve
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --log
- id: in_disable_prog_bar
  doc: 'disables the progress bars (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_prog_bar
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory (default:\nppanggolin_output_DATE2021-03-08_HOUR12.47.14_PID1327)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ppanggolin
- draw
