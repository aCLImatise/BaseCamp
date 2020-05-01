#!/usr/bin/env cwl-runner

baseCommand:
- falco
class: CommandLineTool
cwlVersion: v1.0
id: falco
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: seqfile1
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 2
  type: string
- doc: 'Create all output files in the specified  output directory. If notprovided,
    files  will be created in the same directory as  the input file. '
  id: outdir
  inputBinding:
    prefix: --outdir
  type: boolean
- doc: 'Files come from raw casava output  (currently ignored) '
  id: casa_va
  inputBinding:
    prefix: --casava
  type: boolean
- doc: 'Files come from fast5 nanopore sequences '
  id: nano
  inputBinding:
    prefix: --nano
  type: boolean
- doc: 'If running with --casava do not sequences  (currently ignored) '
  id: no_filter
  inputBinding:
    prefix: --nofilter
  type: boolean
- doc: 'If running with --casava do not remove poor  quality sequences (currently
    ignored) '
  id: no_extract
  inputBinding:
    prefix: --noextract
  type: boolean
- doc: 'Disable grouping of bases for reads >50bp '
  id: nogroup
  inputBinding:
    prefix: --nogroup
  type: boolean
- doc: 'Force file format '
  id: format
  inputBinding:
    prefix: --format
  type: boolean
- doc: 'Specifies number of simultaneous files '
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: 'Non-default filer with a list of  contaminants '
  id: contaminants
  inputBinding:
    prefix: --contaminants
  type: boolean
- doc: 'Non-default file with a list of adapters '
  id: adapters
  inputBinding:
    prefix: --adapters
  type: boolean
- doc: 'Non-default file with limits and warn/fail  criteria '
  id: limits
  inputBinding:
    prefix: --limits
  type: boolean
- doc: 'Skip generating text file (Default = false) '
  id: skip_text
  inputBinding:
    prefix: --skip-text
  type: boolean
- doc: 'Skip generating HTML file (Default = false) '
  id: skip_html
  inputBinding:
    prefix: --skip-html
  type: boolean
- doc: 'Skip short summary(Default = false) '
  id: skip_short_summary
  inputBinding:
    prefix: --skip-short-summary
  type: boolean
- doc: 'print more run info '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'directory in which to create temp files '
  id: dir
  inputBinding:
    prefix: --dir
  type: boolean
- doc: 'advanced mode: adds more information to the  FastQC output depending on non-fastqc
    user  flags '
  id: advanced_mode
  inputBinding:
    prefix: --advanced-mode
  type: boolean
- doc: 'reads are whole genome bisulfite  sequencing, and more Ts and fewer Cs are  therefore
    expected and will be accounted  for in base content (advanced mode) '
  id: bisulfite
  inputBinding:
    prefix: --bisulfite
  type: boolean
- doc: 'The input is a reverse-complement. All  modules will be tested by swapping
    A/T and  C/G '
  id: reverse_complement
  inputBinding:
    prefix: --reverse-complement
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
