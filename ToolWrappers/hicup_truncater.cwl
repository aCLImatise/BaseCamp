class: CommandLineTool
id: hicup_truncater.cwl
inputs:
- id: in_config
  doc: Name of the optional configuration file
  type: boolean
  inputBinding:
    prefix: --config
- id: in_no_fill
  doc: "Hi-C protocol did NOT include a fill-in of sticky ends prior to\nre-ligation\
    \ and therefore reads shall be truncated at\nthe restriction site sequence. This\
    \ feature is only supported for\nsingle restriction enzyme Hi-C."
  type: boolean
  inputBinding:
    prefix: --nofill
- id: in_outdir
  doc: Directory to write output files
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: Suppress all progress reports
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_re_one
  doc: "Restriction enzyme recognition sequence. e.g. A^GATCT,BglII\nHiCUP can accomodate\
    \ more than one enzyme and N nucleotides\ne.g. A^GATCT,BglII:A^AGCTT,HindIII:^GANTC,myRE."
  type: boolean
  inputBinding:
    prefix: --re1
- id: in_sequences
  doc: "Instead of specifying a restriction enzyme recognition sequence,\nspecify\
    \ the ligation sequences directly"
  type: boolean
  inputBinding:
    prefix: --sequences
- id: in_threads
  doc: "Number of threads to use, allowing simultaneous processing  of\ndifferent\
    \ files"
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_zip
  doc: Compress output using gzip
  type: boolean
  inputBinding:
    prefix: --zip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Directory to write output files
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- hicup_truncater
