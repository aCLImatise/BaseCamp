class: CommandLineTool
id: ppanggolin_rgp.cwl
inputs:
- id: persistent_penalty
  doc: 'Penalty score to apply to persistent genes (default: 3)'
  type: string
  inputBinding:
    prefix: --persistent_penalty
- id: variable_gain
  doc: 'Gain score to apply to variable genes (default: 1)'
  type: string
  inputBinding:
    prefix: --variable_gain
- id: min_score
  doc: 'Minimal score wanted for considering a region as being a RGP (default: 4)'
  type: long
  inputBinding:
    prefix: --min_score
- id: min_length
  doc: 'Minimum length (bp) of a region to be considered a RGP (default: 3000)'
  type: long
  inputBinding:
    prefix: --min_length
- id: dup_margin
  doc: "Minimum ratio of organisms where the family is present in which the family\
    \ must have multiple genes for it to be considered 'duplicated' (default: 0.05)"
  type: string
  inputBinding:
    prefix: --dup_margin
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
- rgp
