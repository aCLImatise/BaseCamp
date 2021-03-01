class: CommandLineTool
id: falco.cwl
inputs:
- id: in_outdir
  doc: "Create all output files in the specified\noutput directory. If notprovided,\
    \ files\nwill be created in the same directory as\nthe input file."
  type: boolean?
  inputBinding:
    prefix: --outdir
- id: in_casa_va
  doc: "Files come from raw casava output\n(currently ignored)"
  type: boolean?
  inputBinding:
    prefix: --casava
- id: in_nano
  doc: Files come from fast5 nanopore sequences
  type: boolean?
  inputBinding:
    prefix: --nano
- id: in_no_filter
  doc: "If running with --casava do not sequences\n(currently ignored)"
  type: boolean?
  inputBinding:
    prefix: --nofilter
- id: in_no_extract
  doc: "If running with --casava do not remove poor\nquality sequences (currently\
    \ ignored)"
  type: boolean?
  inputBinding:
    prefix: --noextract
- id: in_nogroup
  doc: Disable grouping of bases for reads >50bp
  type: boolean?
  inputBinding:
    prefix: --nogroup
- id: in_format
  doc: Force file format
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_threads
  doc: Specifies number of simultaneous files
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_nondefault_filer_list
  doc: Non-default filer with a list of
  type: boolean?
  inputBinding:
    prefix: --contaminants
- id: in_limits
  doc: Non-default file with limits and warn/fail
  type: boolean?
  inputBinding:
    prefix: --limits
- id: in_skip_html
  doc: Skip generating HTML file (Default = false)
  type: boolean?
  inputBinding:
    prefix: --skip-html
- id: in_skip_short_summary
  doc: Skip short summary(Default = false)
  type: boolean?
  inputBinding:
    prefix: --skip-short-summary
- id: in_quiet
  doc: print more run info
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_dir
  doc: directory in which to create temp files
  type: boolean?
  inputBinding:
    prefix: --dir
- id: in_advanced_mode
  doc: "advanced mode: adds more information to the\nFastQC output depending on non-fastqc\
    \ user\nflags"
  type: boolean?
  inputBinding:
    prefix: --advanced-mode
- id: in_bisulfite
  doc: "reads are whole genome bisulfite\nsequencing, and more Ts and fewer Cs are\n\
    therefore expected and will be accounted\nfor in base content (advanced mode)"
  type: boolean?
  inputBinding:
    prefix: --bisulfite
- id: in_reverse_complement
  doc: "The input is a reverse-complement. All\nmodules will be tested by swapping\
    \ A/T and\nC/G"
  type: boolean?
  inputBinding:
    prefix: --reverse-complement
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in__adapters_nondefault
  doc: '-a, --adapters            Non-default file with a list of adapters '
  type: string
  inputBinding:
    position: 0
- id: in_criteria
  doc: '-T, --skip-text           Skip generating text file (Default = false) '
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- falco
