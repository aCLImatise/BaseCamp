class: CommandLineTool
id: tsplit_TIR.cwl
inputs:
- id: in_file
  doc: Multifasta containing complete elements.
  type: string
  inputBinding:
    prefix: --infile
- id: prefix
  doc: 'All output files begin with this string. (Default: [infile name])'
  type: string
  inputBinding:
    prefix: --prefix
- id: outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: string
  inputBinding:
    prefix: --outdir
- id: split_mode
  doc: 'all= Report input sequence as well as internal and external segments. split=
    Report internal and external segments after splitting. internal = Report only
    internal segments external = Report only terminal repeat segments. If set to "None"
    then only synthetic MITES will be reported if --makemites is also set. (Default:
    split)'
  type: string
  inputBinding:
    prefix: --splitmode
- id: make_mites
  doc: Attempt to construct synthetic MITE sequences from TIRs.
  type: boolean
  inputBinding:
    prefix: --makemites
- id: keep_temp
  doc: If set do not remove temp directory on completion.
  type: boolean
  inputBinding:
    prefix: --keeptemp
- id: verbose
  doc: If set, report progress.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: max_dist
  doc: 'Terminal repeat candidates must be no more than this many bases from end of
    input element. (Default: 2) Note: Increase this value if you suspect that your
    element is nested within some flanking sequence.'
  type: long
  inputBinding:
    prefix: --maxdist
- id: mini_d
  doc: 'Minimum identity between terminal repeat pairs. As float. (Default: 80.0)'
  type: long
  inputBinding:
    prefix: --minid
- id: min_term
  doc: 'Minimum length for a terminal repeat to be considered. Equivalent to nucmer
    "--mincluster" (Default: 10)'
  type: long
  inputBinding:
    prefix: --minterm
- id: min_seed
  doc: 'Minimum length of a maximal exact match to be included in final match cluster.
    Equivalent to nucmer "-- minmatch". (Default: 5)'
  type: long
  inputBinding:
    prefix: --minseed
- id: diag_factor
  doc: 'Maximum diagonal difference factor for clustering of matches within nucmer,
    i.e. diagonal difference / match separation (default 0.20) Note: Increase value
    for greater tolerance of indels between terminal repeats.'
  type: string
  inputBinding:
    prefix: --diagfactor
- id: method
  doc: 'Select alignment method: "blastn" or "nucmer".(Default: nucmer)'
  type: string
  inputBinding:
    prefix: --method
outputs: []
cwlVersion: v1.1
baseCommand:
- tsplit-TIR
