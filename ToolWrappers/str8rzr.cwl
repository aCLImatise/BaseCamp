class: CommandLineTool
id: str8rzr.cwl
inputs:
- id: in_reverse_complement_
  doc: (no reverse complement-- this turns off the default behavior of reverse-complementing
    matches on the negative strand)
  type: boolean
  inputBinding:
    prefix: -n
- id: in_verbose_prints_additional
  doc: (verbose ; prints out additional diagnostic information)
  type: boolean
  inputBinding:
    prefix: -v
- id: in_include_anchors_includes
  doc: (Include anchors ; includes the Anchor sequences in the reported haplotypes)
  type: boolean
  inputBinding:
    prefix: -i
- id: in_default_distance_anchor
  doc: (default 1; the maximum Hamming distance used with anchor search. can only
    be 0, 1 or 2)
  type: long
  inputBinding:
    prefix: -a
- id: in_default_distance_motif
  doc: (default 0; the maximum Hamming distance used with motif search. can only be
    0 or 1)
  type: long
  inputBinding:
    prefix: -m
- id: in_required_locus_file
  doc: (REQUIRED; the locus config file used to define the STRs)
  type: File
  inputBinding:
    prefix: -c
- id: in_number_processorscpus_used
  doc: (The number of processors/cpus used)
  type: long
  inputBinding:
    prefix: -p
- id: in_filters_type_eg
  doc: (This filters on Type, e.g. AUTOSOMES; ie, it restricts the output to STRs
    that have the same type as specified in column 2 of the config file)
  type: File
  inputBinding:
    prefix: -t
- id: in_writes_output_opposed
  doc: (This writes the output to filename, as opposed to standard out)
  type: File
  inputBinding:
    prefix: -o
- id: in_min_match_causes
  doc: (Min match; this causes haplotypes with less than f occurences to be omitted
    from the final output file
  type: long
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filters_type_eg
  doc: (This filters on Type, e.g. AUTOSOMES; ie, it restricts the output to STRs
    that have the same type as specified in column 2 of the config file)
  type: File
  outputBinding:
    glob: $(inputs.in_filters_type_eg)
- id: out_writes_output_opposed
  doc: (This writes the output to filename, as opposed to standard out)
  type: File
  outputBinding:
    glob: $(inputs.in_writes_output_opposed)
cwlVersion: v1.1
baseCommand:
- str8rzr
