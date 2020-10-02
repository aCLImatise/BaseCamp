class: CommandLineTool
id: tsplit_TIR.cwl
inputs:
- id: in_in_file
  doc: Multifasta containing complete elements.
  type: File
  inputBinding:
    prefix: --infile
- id: in_prefix
  doc: "All output files begin with this string. (Default:\n[infile name])"
  type: string
  inputBinding:
    prefix: --prefix
- id: in_outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_split_mode
  doc: "all= Report input sequence as well as internal and\nexternal segments. split=\
    \ Report internal and external\nsegments after splitting. internal = Report only\n\
    internal segments external = Report only terminal\nrepeat segments. If set to\
    \ \"None\" then only synthetic\nMITES will be reported if --makemites is also\
    \ set.\n(Default: split)"
  type: string
  inputBinding:
    prefix: --splitmode
- id: in_make_mites
  doc: Attempt to construct synthetic MITE sequences from
  type: boolean
  inputBinding:
    prefix: --makemites
- id: in_verbose
  doc: If set, report progress.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_max_dist
  doc: "Terminal repeat candidates must be no more than this\nmany bases from end\
    \ of input element. (Default: 2)\nNote: Increase this value if you suspect that\
    \ your\nelement is nested within some flanking sequence."
  type: long
  inputBinding:
    prefix: --maxdist
- id: in_mini_d
  doc: "Minimum identity between terminal repeat pairs. As\nfloat. (Default: 80.0)"
  type: double
  inputBinding:
    prefix: --minid
- id: in_min_term
  doc: "Minimum length for a terminal repeat to be considered.\nEquivalent to nucmer\
    \ \"--mincluster\" (Default: 10)"
  type: long
  inputBinding:
    prefix: --minterm
- id: in_min_seed
  doc: "Minimum length of a maximal exact match to be included\nin final match cluster.\
    \ Equivalent to nucmer \"--\nminmatch\". (Default: 5)"
  type: long
  inputBinding:
    prefix: --minseed
- id: in_diag_factor
  doc: "Maximum diagonal difference factor for clustering of\nmatches within nucmer,\
    \ i.e. diagonal difference /\nmatch separation (default 0.20) Note: Increase value\n\
    for greater tolerance of indels between terminal\nrepeats."
  type: double
  inputBinding:
    prefix: --diagfactor
- id: in_method
  doc: "Select alignment method: \"blastn\" or\n\"nucmer\".(Default: nucmer)\n"
  type: string
  inputBinding:
    prefix: --method
- id: in_t_irs_dot
  doc: --keeptemp            If set do not remove temp directory on completion.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- tsplit-TIR
