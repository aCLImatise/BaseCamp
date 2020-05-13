class: CommandLineTool
id: ppanggolin_annotate.cwl
inputs:
- id: fast_a
  doc: 'A tab-separated file listing the organism names, and the fasta filepath of
    its genomic sequence(s) (the fastas can be compressed with gzip). One line per
    organism. (default: None)'
  type: string
  inputBinding:
    prefix: --fasta
- id: an_no
  doc: 'A tab-separated file listing the organism names, and the gff/gbff filepath
    of its annotations (the files can be compressed with gzip). One line per organism.
    If this is provided, those annotations will be used. (default: None)'
  type: string
  inputBinding:
    prefix: --anno
- id: output
  doc: 'Output directory (default: ppanggolin_output_DATE2020-05-03_HOUR04.18.07_PID8645)'
  type: string
  inputBinding:
    prefix: --output
- id: overlap
  doc: 'Use to not remove genes overlapping with RNA features. (default: True)'
  type: boolean
  inputBinding:
    prefix: --overlap
- id: no_rna
  doc: 'Use to avoid annotating RNA features. (default: False)'
  type: boolean
  inputBinding:
    prefix: --norna
- id: kingdom
  doc: 'Kingdom to which the prokaryota belongs to, to know which models to use for
    rRNA annotation. (default: bacteria)'
  type: string
  inputBinding:
    prefix: --kingdom
- id: translation_table
  doc: 'Translation table (genetic code) to use. (default: 11)'
  type: string
  inputBinding:
    prefix: --translation_table
- id: basename
  doc: 'basename for the output file (default: pangenome)'
  type: string
  inputBinding:
    prefix: --basename
- id: use_pseudo
  doc: 'In the context of provided annotation, use this option to use pseudogenes.
    (Default behavior is to ignore them) (default: False)'
  type: boolean
  inputBinding:
    prefix: --use_pseudo
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
- annotate
