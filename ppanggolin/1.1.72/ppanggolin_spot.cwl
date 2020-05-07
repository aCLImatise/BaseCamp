class: CommandLineTool
id: ppanggolin_spot.cwl
inputs:
- id: output
  doc: 'Output directory (default: ppanggolin_output_DATE2020- 05-03_HOUR04.20.06_PID10223)'
  type: string
  inputBinding:
    prefix: --output
- id: spot_graph
  doc: 'Writes a graph in a .gexf format of pairs of blocks of single copy markers
    flanking RGPs, supposedly belonging to the same hotspot (default: False)'
  type: boolean
  inputBinding:
    prefix: --spot_graph
- id: draw_hotspots
  doc: 'Draws a figure representing all of the hotspots syntenies (default: False)'
  type: boolean
  inputBinding:
    prefix: --draw_hotspots
- id: overlapping_match
  doc: "The number of 'missing' persistent genes allowed when comparing flanking genes\
    \ during hotspot computations (default: 2)"
  type: string
  inputBinding:
    prefix: --overlapping_match
- id: set_size
  doc: 'Number of single copy markers to use as flanking genes for a RGP during hotspot
    computation (default: 3)'
  type: string
  inputBinding:
    prefix: --set_size
- id: exact_match_size
  doc: 'Number of perfecty matching flanking single copy markers required to associate
    RGPs during hotspot computation (Ex: If set to 1, two RGPs are in the same hotspot
    if both their 1st flanking genes are the same) (default: 1)'
  type: string
  inputBinding:
    prefix: --exact_match_size
- id: interest
  doc: 'Comma separated list of elements to flag when drawing hotspots (default: )'
  type: long
  inputBinding:
    prefix: --interest
- id: pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: string
  inputBinding:
    prefix: --pangenome
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
- spot
