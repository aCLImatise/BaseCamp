class: CommandLineTool
id: ppanggolin_annotate.cwl
inputs:
- id: in_fast_a
  doc: "A tab-separated file listing the organism names, and\nthe fasta filepath of\
    \ its genomic sequence(s) (the\nfastas can be compressed with gzip). One line\
    \ per\norganism. (default: None)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_an_no
  doc: "A tab-separated file listing the organism names, and\nthe gff/gbff filepath\
    \ of its annotations (the files\ncan be compressed with gzip). One line per organism.\n\
    If this is provided, those annotations will be used.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --anno
- id: in_output
  doc: "Output directory (default:\nppanggolin_output_DATE2021-03-08_HOUR12.47.28_PID1545)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_overlap
  doc: "Use to not remove genes overlapping with RNA features.\n(default: True)"
  type: boolean?
  inputBinding:
    prefix: --overlap
- id: in_no_rna
  doc: 'Use to avoid annotating RNA features. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --norna
- id: in_kingdom
  doc: "Kingdom to which the prokaryota belongs to, to know\nwhich models to use for\
    \ rRNA annotation. (default:\nbacteria)"
  type: string?
  inputBinding:
    prefix: --kingdom
- id: in_translation_table
  doc: 'Translation table (genetic code) to use. (default: 11)'
  type: long?
  inputBinding:
    prefix: --translation_table
- id: in_basename
  doc: 'basename for the output file (default: pangenome)'
  type: File?
  inputBinding:
    prefix: --basename
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
  doc: "Output directory (default:\nppanggolin_output_DATE2021-03-08_HOUR12.47.28_PID1545)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_basename
  doc: 'basename for the output file (default: pangenome)'
  type: File?
  outputBinding:
    glob: $(inputs.in_basename)
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
  dockerPull: quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ppanggolin
- annotate
