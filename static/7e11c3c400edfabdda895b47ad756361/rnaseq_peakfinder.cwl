class: CommandLineTool
id: rnaseq_peakfinder.pl.cwl
inputs:
- id: bgp_os
  doc: BedGraph input file containing coverage of the [+] strand.
  type: boolean
  inputBinding:
    prefix: --bgpos
- id: bgn_eg
  doc: BedGraph input file containing coverage of the [-] strand.
  type: boolean
  inputBinding:
    prefix: --bgneg
- id: winsize
  doc: Size of the sliding window in nt.
  type: boolean
  inputBinding:
    prefix: --winsize
- id: interval
  doc: Size of the interval the sliding window is shifted at each step ('step size').
  type: boolean
  inputBinding:
    prefix: --interval
- id: min_cov
  doc: Minimum coverage required for an enriched region to be considered.
  type: boolean
  inputBinding:
    prefix: --mincov
- id: length
  doc: Maximum length of a peak in nt.
  type: boolean
  inputBinding:
    prefix: --length
- id: threshold
  doc: Percentage of the maximum coverage value allowed at both ends of the peaks
    (default 0.1). This value is used to identify peak boundaries.
  type: boolean
  inputBinding:
    prefix: --threshold
- id: out
  doc: Output directory.
  type: boolean
  inputBinding:
    prefix: --out
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- rnaseq_peakfinder.pl
