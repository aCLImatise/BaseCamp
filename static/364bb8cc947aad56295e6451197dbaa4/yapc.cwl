class: CommandLineTool
id: yapc.cwl
inputs:
- id: output_prefix
  doc: Prefix to use for all output files
  type: string
  inputBinding:
    position: 0
- id: condition_rep1_rep2
  doc: 'Name of the condition, BigWig files of first and second replicates; all separated
    by spaces. (default: None)'
  type: string
  inputBinding:
    position: 1
- id: smoothing_window_width
  doc: "Width of the smoothing window used for the second derivative track. If the\
    \ peak calls aren't capturing the peak shape well, try setting this to different\
    \ values ranging from 75 to 200. (default: 150)"
  type: string
  inputBinding:
    prefix: --smoothing-window-width
- id: smoothing_times
  doc: 'Number of times smoothing is applied to the second derivative. (default: 3)'
  type: string
  inputBinding:
    prefix: --smoothing-times
- id: min_concave_region_width
  doc: 'Discard concave regions smaller than the threshold specified. (default: 75)'
  type: long
  inputBinding:
    prefix: --min-concave-region-width
- id: truncate_idr_input
  doc: 'Truncate IDR input to the number of peaks specified. (default: 100000)'
  type: string
  inputBinding:
    prefix: --truncate-idr-input
- id: fixed_peak_halfwidth
  doc: 'Set final peak coordinates to the specified number of base pairs on either
    side of the concave region mode. (default: None)'
  type: string
  inputBinding:
    prefix: --fixed-peak-halfwidth
- id: pseudo_replicates
  doc: 'Use pseudoreplicates as implemented in modENCODE (Landt et al 2012; around
    Fig 7): for each condition, assess peak reproducibility in replicates and pseudoreplicates;
    report globalIDRs for the set with a larger number of peak calls (at IDR=0.001).
    Pseudoreplicates are specified as the 3rd and 4th file name after every condition.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --pseudoreplicates
- id: recycle
  doc: 'Do not recompute (intermediate) output files if a file with the expected name
    is already present. Enabling this can lead to funky behaviour e.g. in the case
    of a previously interrupted run. (default: False)'
  type: boolean
  inputBinding:
    prefix: --recycle
outputs: []
cwlVersion: v1.1
baseCommand:
- yapc
