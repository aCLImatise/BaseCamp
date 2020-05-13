class: CommandLineTool
id: MzXML2Search.cwl
inputs:
- id: f
  doc: <num>      where num is an int specifying the first scan
  type: boolean
  inputBinding:
    prefix: -F
- id: l
  doc: <num>      where num is an int specifying the last scan
  type: boolean
  inputBinding:
    prefix: -L
- id: c
  doc: '<n1>[-<n2>]     "force charge(s)": where n1 is an integer specifying the precursor
    charge state (or possible charge range from n1 to n2 inclusive) to use; this option
    forces input scans to be output with the user-specified charge (or charge range)'
  type: boolean
  inputBinding:
    prefix: -C
- id: c
  doc: '<n1>[-<n2>]     "suggest charge(s)": for scans which do not have a precursor
    charge (or charge range) already determined in the input file, use the user-specified
    charge (or charge range) for those scans.  Input scans which already have defined
    charge (or charge range) are output with their original, unchanged values.'
  type: boolean
  inputBinding:
    prefix: -c
- id: b
  doc: <num>      where num is a float specifying minimum MH+ mass, default=600.0
    Da
  type: boolean
  inputBinding:
    prefix: -B
- id: t
  doc: <num>      where num is a float specifying maximum MH+ mass, default=5000.0
    Da
  type: boolean
  inputBinding:
    prefix: -T
- id: p
  doc: <num>      where num is an int specifying minimum peak count, default=5
  type: boolean
  inputBinding:
    prefix: -P
- id: n
  doc: <num>      where num is an int specifying max peak count using most intense
    peaks, default=0 to print all peaks
  type: boolean
  inputBinding:
    prefix: -N
- id: pm
  doc: <num>     where num is an int specifying mass precision in peaklist, default=4
  type: boolean
  inputBinding:
    prefix: -pm
- id: pi
  doc: <num>     where num is an int specifying intensity precision in peaklist, default=0
  type: boolean
  inputBinding:
    prefix: -pi
- id: i
  doc: <num>      where num is a float specifying minimum threshold for peak intensity,
    default=0.01
  type: boolean
  inputBinding:
    prefix: -I
- id: m
  doc: <n1>[-<n2>]where n1 is an int specifying MS level to export (default=2) and
    n2 specifies an optional range of MS levels to export
  type: boolean
  inputBinding:
    prefix: -M
- id: a
  doc: <str>      where str is the activation method, "CID", "ETD", or "HCD" if this
    option is not specified, then all scans are included
  type: boolean
  inputBinding:
    prefix: -A
- id: z
  doc: <num>      maximum reported charge state for scans that do have a precursor
    charge; useful when scan has a high charge that search engines can't handle. No
    charge is reported if charge is larger than max value, default=7.
  type: boolean
  inputBinding:
    prefix: -Z
- id: x
  doc: remove charge-reduced precursors from the spectra (suitable for ETD).
  type: boolean
  inputBinding:
    prefix: -X
- id: q
  doc: remove iTRAQ reporter peaks in the range 112-122 Th.
  type: boolean
  inputBinding:
    prefix: -Q
- id: g
  doc: remove TMT reporter peaks in the range 126-132 Th.
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- MzXML2Search
