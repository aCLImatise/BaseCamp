class: CommandLineTool
id: ../../../ribo_sketch.cwl
inputs:
- id: outdir
  doc: 'output directory; default: None'
  type: string
  inputBinding:
    prefix: --outdir
- id: assembly_ext
  doc: extension of assemblies, usually fasta
  type: string
  inputBinding:
    prefix: --assembly_ext
- id: ref_ext
  doc: extension of reference, usually gb
  type: string
  inputBinding:
    prefix: --ref_ext
- id: names
  doc: name the resulting plot and output dirs; comma- separate
  type: string
  inputBinding:
    prefix: --names
- id: replot
  doc: replot, using a previous run of analyses
  type: boolean
  inputBinding:
    prefix: --replot
- id: mauve_jar
  doc: 'path to Mauve.jar; default: ~/mauve_snapshot_2015-02-13/Mauve.jar'
  type: string
  inputBinding:
    prefix: --mauve_jar
- id: verbosity
  doc: 'Logger writes debug to file in output dir; this sets verbosity level sent
    to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical();
    default: 2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_dir
  doc: dir containing a genbank file, assembly filesas fastas. Usually the 'mauve'
    dir in the riboSeed results
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- sketch
