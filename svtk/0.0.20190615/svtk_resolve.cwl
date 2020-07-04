class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtk_resolve.cwl
inputs:
- id: disc_file
  doc: Scraped discordant pairs. Required to attempt to resolve single-ender inversions.
  type: string
  inputBinding:
    prefix: --discfile
- id: disc_file_list
  doc: Tab-delimited list of discordant pair files and indices
  type: string
  inputBinding:
    prefix: --discfile-list
- id: mei_bed
  doc: Mobile element insertion bed. Required to classify inverted insertions.
  type: string
  inputBinding:
    prefix: --mei-bed
- id: cytoband_s
  doc: Cytoband file. Required to correctly classify interchromosomal events.
  type: string
  inputBinding:
    prefix: --cytobands
- id: min_rescan_pe_support
  doc: Minumum discordant pairs required during single-ender rescan.
  type: long
  inputBinding:
    prefix: --min-rescan-pe-support
- id: pe_blacklist
  doc: Tabix indexed bed of blacklisted regions. Any anomalous pair falling inside
    one of these regions is excluded from PE rescanning.
  type: string
  inputBinding:
    prefix: --pe-blacklist
- id: unresolved
  doc: Unresolved complex breakpoints and CNV.
  type: string
  inputBinding:
    prefix: --unresolved
- id: prefix
  doc: Variant prefix [CPX_]
  type: string
  inputBinding:
    prefix: --prefix
- id: quiet
  doc: Disable progress logging to stderr.
  type: string
  inputBinding:
    prefix: --quiet
- id: raw
  doc: Filtered breakpoints and CNV intervals.
  type: string
  inputBinding:
    position: 0
- id: resolved
  doc: Resolved simple and complex variants.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- resolve
