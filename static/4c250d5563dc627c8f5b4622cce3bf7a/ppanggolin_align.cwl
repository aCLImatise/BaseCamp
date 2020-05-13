class: CommandLineTool
id: ppanggolin_align.cwl
inputs:
- id: pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: string
  inputBinding:
    prefix: --pangenome
- id: output
  doc: 'Output directory where the file(s) will be written (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: proteins
  doc: 'proteins sequences to align on the pangenome gene families (default: None)'
  type: string
  inputBinding:
    prefix: --proteins
- id: annotation
  doc: 'annotation input file (gff or gbff) from which to predict RGPs and partitions
    (default: None)'
  type: string
  inputBinding:
    prefix: --annotation
- id: defrag
  doc: 'Use the defragmentation strategy to associate potential fragments with their
    original gene family. (default: False)'
  type: boolean
  inputBinding:
    prefix: --defrag
- id: identity
  doc: 'min identity percentage threshold (default: 0.5)'
  type: string
  inputBinding:
    prefix: --identity
- id: coverage
  doc: 'min coverage percentage threshold (default: 0.8)'
  type: string
  inputBinding:
    prefix: --coverage
- id: translation_table
  doc: 'Translation table (genetic code) to use. (default: 11)'
  type: string
  inputBinding:
    prefix: --translation_table
- id: get_info
  doc: 'Use this option to extract info related to the best hit of each query, such
    as the RGP it is in, or the spots. (default: False)'
  type: boolean
  inputBinding:
    prefix: --getinfo
- id: draw_related
  doc: 'Draw figures and provide graphs in a gexf format of the eventual spots associated
    to the input proteins (default: False)'
  type: boolean
  inputBinding:
    prefix: --draw_related
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
- align
