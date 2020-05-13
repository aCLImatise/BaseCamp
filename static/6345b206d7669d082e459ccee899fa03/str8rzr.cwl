class: CommandLineTool
id: str8rzr.cwl
inputs:
- id: n
  doc: (no reverse complement-- this turns off the default behavior of reverse-complementing
    matches on the negative strand)
  type: boolean
  inputBinding:
    prefix: -n
- id: v
  doc: (verbose ; prints out additional diagnostic information)
  type: boolean
  inputBinding:
    prefix: -v
- id: i
  doc: (Include anchors ; includes the Anchor sequences in the reported haplotypes)
  type: boolean
  inputBinding:
    prefix: -i
- id: a
  doc: (default 1; the maximum Hamming distance used with anchor search. can only
    be 0, 1 or 2)
  type: long
  inputBinding:
    prefix: -a
- id: m
  doc: (default 0; the maximum Hamming distance used with motif search. can only be
    0 or 1)
  type: long
  inputBinding:
    prefix: -m
- id: c
  doc: (REQUIRED; the locus config file used to define the STRs)
  type: string
  inputBinding:
    prefix: -c
- id: p
  doc: (The number of processors/cpus used)
  type: long
  inputBinding:
    prefix: -p
- id: t
  doc: (This filters on Type, e.g. AUTOSOMES; ie, it restricts the output to STRs
    that have the same type as specified in column 2 of the config file)
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: (This writes the output to filename, as opposed to standard out)
  type: File
  inputBinding:
    prefix: -o
- id: f
  doc: (Min match; this causes haplotypes with less than f occurences to be omitted
    from the final output file
  type: long
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- str8rzr
