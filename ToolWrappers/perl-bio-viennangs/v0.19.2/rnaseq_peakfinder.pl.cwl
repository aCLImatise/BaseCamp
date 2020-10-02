class: CommandLineTool
id: rnaseq_peakfinder.pl.cwl
inputs:
- id: in_bgp_os
  doc: BedGraph input file containing coverage of the [+] strand.
  type: boolean
  inputBinding:
    prefix: --bgpos
- id: in_bgn_eg
  doc: BedGraph input file containing coverage of the [-] strand.
  type: boolean
  inputBinding:
    prefix: --bgneg
- id: in_winsize
  doc: Size of the sliding window in nt.
  type: boolean
  inputBinding:
    prefix: --winsize
- id: in_interval
  doc: "Size of the interval the sliding window is shifted at each step\n('step size')."
  type: boolean
  inputBinding:
    prefix: --interval
- id: in_min_cov
  doc: Minimum coverage required for an enriched region to be considered.
  type: boolean
  inputBinding:
    prefix: --mincov
- id: in_length
  doc: Maximum length of a peak in nt.
  type: boolean
  inputBinding:
    prefix: --length
- id: in_threshold
  doc: "Percentage of the maximum coverage value allowed at both ends of the\npeaks\
    \ (default 0.1). This value is used to identify peak boundaries."
  type: boolean
  inputBinding:
    prefix: --threshold
- id: in_out
  doc: Output directory.
  type: Directory
  inputBinding:
    prefix: --out
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory.
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- rnaseq_peakfinder.pl
