class: CommandLineTool
id: svtk_resolve.cwl
inputs:
- id: in_disc_file
  doc: "Scraped discordant pairs. Required to attempt to\nresolve single-ender inversions."
  type: File?
  inputBinding:
    prefix: --discfile
- id: in_disc_file_list
  doc: "Tab-delimited list of discordant pair files and\nindices"
  type: File?
  inputBinding:
    prefix: --discfile-list
- id: in_mei_bed
  doc: "Mobile element insertion bed. Required to classify\ninverted insertions."
  type: string?
  inputBinding:
    prefix: --mei-bed
- id: in_cytoband_s
  doc: "Cytoband file. Required to correctly classify\ninterchromosomal events."
  type: File?
  inputBinding:
    prefix: --cytobands
- id: in_min_rescan_pe_support
  doc: "Minumum discordant pairs required during single-ender\nrescan."
  type: long?
  inputBinding:
    prefix: --min-rescan-pe-support
- id: in_pe_blacklist
  doc: "Tabix indexed bed of blacklisted regions. Any\nanomalous pair falling inside\
    \ one of these regions is\nexcluded from PE rescanning."
  type: string?
  inputBinding:
    prefix: --pe-blacklist
- id: in_unresolved
  doc: Unresolved complex breakpoints and CNV.
  type: string?
  inputBinding:
    prefix: --unresolved
- id: in_prefix
  doc: Variant prefix [CPX_]
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_quiet
  doc: "Disable progress logging to stderr.\n"
  type: string?
  inputBinding:
    prefix: --quiet
- id: in_raw
  doc: Filtered breakpoints and CNV intervals.
  type: string
  inputBinding:
    position: 0
- id: in_resolved
  doc: Resolved simple and complex variants.
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
- svtk
- resolve
