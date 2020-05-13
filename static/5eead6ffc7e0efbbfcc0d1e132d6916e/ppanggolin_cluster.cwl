class: CommandLineTool
id: ppanggolin_cluster.cwl
inputs:
- id: pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: string
  inputBinding:
    prefix: --pangenome
- id: defrag
  doc: 'Use the defragmentation strategy to associated potential fragments with their
    original gene family. (default: False)'
  type: boolean
  inputBinding:
    prefix: --defrag
- id: translation_table
  doc: 'Translation table (genetic code) to use. (default: 11)'
  type: string
  inputBinding:
    prefix: --translation_table
- id: clusters
  doc: 'A tab-separated list containing the result of a clustering. One line per gene.
    First column is cluster ID, and second is gene ID (default: None)'
  type: string
  inputBinding:
    prefix: --clusters
- id: infer_singletons
  doc: 'When reading a clustering result with --clusters, if a gene is not in the
    provided file it will be placed in a cluster where the gene is the only member.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --infer_singletons
- id: coverage
  doc: 'Minimal coverage of the alignment for two proteins to be in the same cluster
    (default: 0.8)'
  type: string
  inputBinding:
    prefix: --coverage
- id: identity
  doc: 'Minimal identity percent for two proteins to be in the same cluster (default:
    0.8)'
  type: string
  inputBinding:
    prefix: --identity
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
- cluster
