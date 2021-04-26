class: CommandLineTool
id: cooltools_compute_saddle.cwl
inputs:
- id: in_contact_type
  doc: "[cis|trans]  Type of the contacts to aggregate  [default:\ncis]"
  type: boolean?
  inputBinding:
    prefix: --contact-type
- id: in_min_dist
  doc: "Minimal distance between bins to consider,\nbp. If negative, removesthe first\
    \ two\ndiagonals of the data. Ignored with\n--contact-type trans.  [default: -1]"
  type: long?
  inputBinding:
    prefix: --min-dist
- id: in_max_dist
  doc: "Maximal distance between bins to consider,\nbp. Ignored, if negative. Ignored\
    \ with\n--contact-type trans.  [default: -1]"
  type: long?
  inputBinding:
    prefix: --max-dist
- id: in_n_bins
  doc: "Number of bins for digitizing track values.\n[default: 50]"
  type: long?
  inputBinding:
    prefix: --n-bins
- id: in_quantiles
  doc: "Bin the signal track into quantiles rather\nthan by value."
  type: boolean?
  inputBinding:
    prefix: --quantiles
- id: in_range
  doc: "Low and high values used for binning genome-\nwide track values, e.g. if `range`=(-0.05,\n\
    0.05), `n-bins` equidistant bins would be\ngenerated. Use to prevent the extreme\
    \ track\nvalues from exploding the bin range and to\nensure consistent bins across\
    \ several runs\nof `compute_saddle` command using different\ntrack files."
  type: double?
  inputBinding:
    prefix: --range
- id: in_q_range
  doc: "...       The fraction of the genome-wide range of the\ntrack values used\
    \ to generate bins. E.g., if\n`qrange`=(0.02, 0.98) the lower bin would\nstart\
    \ at the 2nd percentile and the upper\nbin would end at the 98th percentile of\
    \ the\ngenome-wide signal. Use to prevent the\nextreme track values from exploding\
    \ the bin\nrange.  [default: 0.0, 1.0]"
  type: double?
  inputBinding:
    prefix: --qrange
- id: in_weight_name
  doc: "Use balancing weight with this name.\n[default: weight]"
  type: string?
  inputBinding:
    prefix: --weight-name
- id: in_no_strength
  doc: "Compute and save compartment 'saddle\nstrength' profile"
  type: boolean?
  inputBinding:
    prefix: --no-strength
- id: in_regions
  doc: "Path to a BED file containing genomic\nregions for which saddleplot will be\n\
    calculated. Region names can be provided in\na 4th column and should match regions\
    \ and\ntheir names in expected."
  type: File?
  inputBinding:
    prefix: --regions
- id: in_out_prefix
  doc: "Dump 'saddledata', 'binedges' and 'hist'\narrays in a numpy-specific .npz\
    \ container.\nUse numpy.load to load these arrays into a\ndict-like object. The\
    \ digitized signal\nvalues are saved to a bedGraph-style TSV.\n[required]"
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_fig
  doc: "[png|jpg|svg|pdf|ps|eps]  Generate a figure and save to a file of the\nspecified\
    \ format. If not specified - no\nimage is generated. Repeat for multiple\noutput\
    \ formats."
  type: File?
  inputBinding:
    prefix: --fig
- id: in_scale
  doc: '[linear|log]            Value scale for the heatmap  [default: log]'
  type: boolean?
  inputBinding:
    prefix: --scale
- id: in_cmap
  doc: "Name of matplotlib colormap  [default:\ncoolwarm]"
  type: string?
  inputBinding:
    prefix: --cmap
- id: in_vmin
  doc: "Low value of the saddleplot colorbar. Note:\nvalue in original units irrespective\
    \ of used\nscale, and therefore should be positive for\nboth vmin and vmax."
  type: double?
  inputBinding:
    prefix: --vmin
- id: in_vmax
  doc: High value of the saddleplot colorbar
  type: double?
  inputBinding:
    prefix: --vmax
- id: in_hist_color
  doc: Face color of histogram bar chart
  type: string?
  inputBinding:
    prefix: --hist-color
- id: in_verbose
  doc: Enable verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_cool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_track_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_expected_path
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fig
  doc: "[png|jpg|svg|pdf|ps|eps]  Generate a figure and save to a file of the\nspecified\
    \ format. If not specified - no\nimage is generated. Repeat for multiple\noutput\
    \ formats."
  type: File?
  outputBinding:
    glob: $(inputs.in_fig)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0
cwlVersion: v1.1
baseCommand:
- cooltools
- compute-saddle
