class: CommandLineTool
id: ppanggolin_align.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_output
  doc: "Output directory where the file(s) will be written\n(default: None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_proteins
  doc: "proteins sequences to align on the pangenome gene\nfamilies (default: None)"
  type: string?
  inputBinding:
    prefix: --proteins
- id: in_annotation
  doc: "annotation input file (gff or gbff) from which to\npredict RGPs and partitions\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --annotation
- id: in_defrag
  doc: "Use the defragmentation strategy to associate\npotential fragments with their\
    \ original gene family.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --defrag
- id: in_identity
  doc: 'min identity percentage threshold (default: 0.5)'
  type: long?
  inputBinding:
    prefix: --identity
- id: in_coverage
  doc: 'min coverage percentage threshold (default: 0.8)'
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_translation_table
  doc: 'Translation table (genetic code) to use. (default: 11)'
  type: long?
  inputBinding:
    prefix: --translation_table
- id: in_get_info
  doc: "Use this option to extract info related to the best\nhit of each query, such\
    \ as the RGP it is in, or the\nspots. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --getinfo
- id: in_draw_related
  doc: "Draw figures and provide graphs in a gexf format of\nthe eventual spots associated\
    \ to the input proteins\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --draw_related
- id: in_use_pseudo
  doc: "In the context of provided annotation, use this option\nto read pseudogenes.\
    \ (Default behavior is to ignore\nthem) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --use_pseudo
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
  doc: "Output directory where the file(s) will be written\n(default: None)"
  type: File?
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
  dockerPull: quay.io/biocontainers/ppanggolin:1.1.131--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ppanggolin
- align
