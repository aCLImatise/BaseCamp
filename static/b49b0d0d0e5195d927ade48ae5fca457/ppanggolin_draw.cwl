class: CommandLineTool
id: ppanggolin_draw.cwl
inputs:
- id: pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: string
  inputBinding:
    prefix: --pangenome
- id: output
  doc: 'Output directory (default: ppanggolin_output_DATE2020-05-03_HOUR04.19.09_PID9442)'
  type: string
  inputBinding:
    prefix: --output
- id: tile_plot
  doc: 'draw the tile plot of the pangenome (default: False)'
  type: boolean
  inputBinding:
    prefix: --tile_plot
- id: no_cloud
  doc: 'Do not draw the cloud in the tile plot (default: False)'
  type: boolean
  inputBinding:
    prefix: --nocloud
- id: soft_core
  doc: 'Soft core threshold to use (default: 0.95)'
  type: string
  inputBinding:
    prefix: --soft_core
- id: u_curve
  doc: 'draw the U-curve of the pangenome (default: False)'
  type: boolean
  inputBinding:
    prefix: --ucurve
- id: tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: string
  inputBinding:
    prefix: --tmpdir
- id: verbose
  doc: '{0,1,2}     Indicate verbose level (0 for warning and errors only, 1 for info,
    2 for debug) (default: 1)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: log
  doc: 'log output file (default: stdout)'
  type: string
  inputBinding:
    prefix: --log
- id: cpu
  doc: 'Number of available cpus (default: 1)'
  type: string
  inputBinding:
    prefix: --cpu
- id: force
  doc: 'Force writing in output directory and in pangenome output file. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanggolin
- draw
