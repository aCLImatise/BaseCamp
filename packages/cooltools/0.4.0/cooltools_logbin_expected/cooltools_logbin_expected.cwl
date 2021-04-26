class: CommandLineTool
id: cooltools_logbin_expected.cwl
inputs:
- id: in_bins_per_order_magnitude
  doc: "How many bins per order of magnitude.\nDefault of 10 has a ratio of neighboring\n\
    bins of about 1.25  [default: 10]"
  type: double?
  inputBinding:
    prefix: --bins-per-order-magnitude
- id: in_bin_layout
  doc: "'fixed' means that bins are exactly the same\nfor different datasets, and\
    \ only depend on\nbins_per_order_magnitude 'longest_regio'\nmeans that the last\
    \ bin will end at size of\nthe longest region.  GOOD: the last bin will\nhave\
    \ as much data as possible.  BAD: bin\nedges will end up different for different\n\
    datasets, you can't divide them by each\nother  [default: fixed]"
  type: long?
  inputBinding:
    prefix: --bin-layout
- id: in_min_n_valid
  doc: "For each region, throw out bins (log-spaced)\nthat have less than min_nvalid\
    \ valid pixels.\nThis will ensure that each entree in Pc by\nregion has at least\
    \ n_valid valid pixels.\nDon't set it to zero, or it will introduce\nbugs. Setting\
    \ it to 1 is OK, but not\nrecommended.  [default: 200]"
  type: long?
  inputBinding:
    prefix: --min-nvalid
- id: in_min_count
  doc: "If counts are found in the data, then for\neach region, throw out bins (log-spaced)\n\
    that have more than min_counts of counts.sum\n(raw Hi-C counts). This will ensure\
    \ that\neach entree in P(s) by region has at least\nmin_count raw Hi-C reads \
    \ [default: 50]"
  type: long?
  inputBinding:
    prefix: --min-count
- id: in_spread_funcs
  doc: "A way to estimate the spread of the P(s)\ncurves between regions. * 'minmax'\
    \ - the\nminimum/maximum of by-region P(s) * 'std' -\nweighted standard deviation\
    \ of P(s) curves\n(may produce negative results)  * 'logstd'\n(recommended) weighted\
    \ standard deviation in\nlogspace  [default: logstd]"
  type: string?
  inputBinding:
    prefix: --spread-funcs
- id: in_spread_funcs_slope
  doc: "Same as spread-funcs, but for slope\n(derivative) ratehr than P(s)  [default:\n\
    std]"
  type: string?
  inputBinding:
    prefix: --spread-funcs-slope
- id: in_resolution
  doc: "Data resolution in bp. If provided,\nadditonal column of separation in bp\
    \ (s_bp)\nwill be added to the outputs"
  type: string?
  inputBinding:
    prefix: --resolution
- id: in_name_dot
  doc: 'OUTPUT_PREFIX: Output file name prefix to store the logbinned expected'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0
cwlVersion: v1.1
baseCommand:
- cooltools
- logbin-expected
