class: CommandLineTool
id: ribo_sketch.cwl
inputs:
- id: in_outdir
  doc: 'output directory; default: None'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_assembly_ext
  doc: extension of assemblies, usually fasta
  type: string?
  inputBinding:
    prefix: --assembly_ext
- id: in_ref_ext
  doc: extension of reference, usually gb
  type: string?
  inputBinding:
    prefix: --ref_ext
- id: in_names
  doc: "name the resulting plot and output dirs; comma-\nseparate"
  type: string?
  inputBinding:
    prefix: --names
- id: in_replot
  doc: replot, using a previous run of analyses
  type: boolean?
  inputBinding:
    prefix: --replot
- id: in_mauve_jar
  doc: "path to Mauve.jar; default:\n~/mauve_snapshot_2015-02-13/Mauve.jar"
  type: File?
  inputBinding:
    prefix: --mauve_jar
- id: in_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'output directory; default: None'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2"
  type: File?
  outputBinding:
    glob: $(inputs.in_verbosity)
hints: []
cwlVersion: v1.1
baseCommand:
- ribo
- sketch
