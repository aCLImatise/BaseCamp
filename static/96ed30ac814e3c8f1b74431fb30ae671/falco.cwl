class: CommandLineTool
id: falco.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seqfile1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: outdir
  doc: 'Create all output files in the specified  output directory. If notprovided,
    files  will be created in the same directory as  the input file. '
  type: boolean
  inputBinding:
    prefix: --outdir
- id: casa_va
  doc: 'Files come from raw casava output  (currently ignored) '
  type: boolean
  inputBinding:
    prefix: --casava
- id: nano
  doc: 'Files come from fast5 nanopore sequences '
  type: boolean
  inputBinding:
    prefix: --nano
- id: no_filter
  doc: 'If running with --casava do not sequences  (currently ignored) '
  type: boolean
  inputBinding:
    prefix: --nofilter
- id: no_extract
  doc: 'If running with --casava do not remove poor  quality sequences (currently
    ignored) '
  type: boolean
  inputBinding:
    prefix: --noextract
- id: nogroup
  doc: 'Disable grouping of bases for reads >50bp '
  type: boolean
  inputBinding:
    prefix: --nogroup
- id: format
  doc: 'Force file format '
  type: boolean
  inputBinding:
    prefix: --format
- id: threads
  doc: 'Specifies number of simultaneous files '
  type: boolean
  inputBinding:
    prefix: --threads
- id: contaminants
  doc: 'Non-default filer with a list of  contaminants '
  type: boolean
  inputBinding:
    prefix: --contaminants
- id: adapters
  doc: 'Non-default file with a list of adapters '
  type: boolean
  inputBinding:
    prefix: --adapters
- id: limits
  doc: 'Non-default file with limits and warn/fail  criteria '
  type: boolean
  inputBinding:
    prefix: --limits
- id: skip_text
  doc: 'Skip generating text file (Default = false) '
  type: boolean
  inputBinding:
    prefix: --skip-text
- id: skip_html
  doc: 'Skip generating HTML file (Default = false) '
  type: boolean
  inputBinding:
    prefix: --skip-html
- id: skip_short_summary
  doc: 'Skip short summary(Default = false) '
  type: boolean
  inputBinding:
    prefix: --skip-short-summary
- id: quiet
  doc: 'print more run info '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: dir
  doc: 'directory in which to create temp files '
  type: boolean
  inputBinding:
    prefix: --dir
- id: advanced_mode
  doc: 'advanced mode: adds more information to the  FastQC output depending on non-fastqc
    user  flags '
  type: boolean
  inputBinding:
    prefix: --advanced-mode
- id: bisulfite
  doc: 'reads are whole genome bisulfite  sequencing, and more Ts and fewer Cs are  therefore
    expected and will be accounted  for in base content (advanced mode) '
  type: boolean
  inputBinding:
    prefix: --bisulfite
- id: reverse_complement
  doc: 'The input is a reverse-complement. All  modules will be tested by swapping
    A/T and  C/G '
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- falco
