class: CommandLineTool
id: yapc.cwl
inputs:
- id: in_smoothing_window_width
  doc: "Width of the smoothing window used for the second\nderivative track. If the\
    \ peak calls aren't capturing\nthe peak shape well, try setting this to different\n\
    values ranging from 75 to 200. (default: 150)"
  type: long?
  inputBinding:
    prefix: --smoothing-window-width
- id: in_smoothing_times
  doc: "Number of times smoothing is applied to the second\nderivative. (default:\
    \ 3)"
  type: long?
  inputBinding:
    prefix: --smoothing-times
- id: in_min_concave_region_width
  doc: "Discard concave regions smaller than the threshold\nspecified. (default: 75)"
  type: long?
  inputBinding:
    prefix: --min-concave-region-width
- id: in_truncate_idr_input
  doc: "Truncate IDR input to the number of peaks specified.\n(default: 100000)"
  type: long?
  inputBinding:
    prefix: --truncate-idr-input
- id: in_fixed_peak_halfwidth
  doc: "Set final peak coordinates to the specified number of\nbase pairs on either\
    \ side of the concave region mode.\n(default: None)"
  type: long?
  inputBinding:
    prefix: --fixed-peak-halfwidth
- id: in_pseudo_replicates
  doc: "Use pseudoreplicates as implemented in modENCODE\n(Landt et al 2012; around\
    \ Fig 7): for each condition,\nassess peak reproducibility in replicates and\n\
    pseudoreplicates; report globalIDRs for the set with a\nlarger number of peak\
    \ calls (at IDR=0.001).\nPseudoreplicates are specified as the 3rd and 4th file\n\
    name after every condition. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --pseudoreplicates
- id: in_recycle
  doc: "Do not recompute (intermediate) output files if a file\nwith the expected\
    \ name is already present. Enabling\nthis can lead to funky behaviour e.g. in\
    \ the case of a\npreviously interrupted run. (default: False)\n"
  type: File?
  inputBinding:
    prefix: --recycle
- id: in_output_prefix
  doc: Prefix to use for all output files
  type: string
  inputBinding:
    position: 0
- id: in_condition_rep_one_rep_two
  doc: "Name of the condition, BigWig files of first and\nsecond replicates; all separated\
    \ by spaces. (default:\nNone)"
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_recycle
  doc: "Do not recompute (intermediate) output files if a file\nwith the expected\
    \ name is already present. Enabling\nthis can lead to funky behaviour e.g. in\
    \ the case of a\npreviously interrupted run. (default: False)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_recycle)
hints: []
cwlVersion: v1.1
baseCommand:
- yapc
