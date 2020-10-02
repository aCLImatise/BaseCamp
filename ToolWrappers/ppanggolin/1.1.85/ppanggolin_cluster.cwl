class: CommandLineTool
id: ppanggolin_cluster.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File
  inputBinding:
    prefix: --pangenome
- id: in_defrag
  doc: "Use the defragmentation strategy to associated\npotential fragments with their\
    \ original gene family.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --defrag
- id: in_translation_table
  doc: 'Translation table (genetic code) to use. (default: 11)'
  type: long
  inputBinding:
    prefix: --translation_table
- id: in_clusters
  doc: "A tab-separated list containing the result of a\nclustering. One line per\
    \ gene. First column is cluster\nID, and second is gene ID (default: None)"
  type: string
  inputBinding:
    prefix: --clusters
- id: in_infer_singletons
  doc: "When reading a clustering result with --clusters, if a\ngene is not in the\
    \ provided file it will be placed in\na cluster where the gene is the only member.\
    \ (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --infer_singletons
- id: in_coverage
  doc: "Minimal coverage of the alignment for two proteins to\nbe in the same cluster\
    \ (default: 0.8)"
  type: double
  inputBinding:
    prefix: --coverage
- id: in_identity
  doc: "Minimal identity percent for two proteins to be in the\nsame cluster (default:\
    \ 0.8)"
  type: double
  inputBinding:
    prefix: --identity
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File
  inputBinding:
    prefix: --log
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- ppanggolin
- cluster
