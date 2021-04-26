class: CommandLineTool
id: cooltools_call_dots.cwl
inputs:
- id: in_expected_name
  doc: "Name of value column in EXPECTED_PATH\n[default: balanced.avg]"
  type: string?
  inputBinding:
    prefix: --expected-name
- id: in_weight_name
  doc: "Use balancing weight with this name.\n[default: weight]"
  type: string?
  inputBinding:
    prefix: --weight-name
- id: in_nproc
  doc: "Number of processes to split the work\nbetween. [default: 1, i.e. no process\
    \ pool]"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_max_loci_separation
  doc: "Limit loci separation for dot-calling, i.e.,\ndo not call dots for loci that\
    \ are further\nthan max_loci_separation basepair apart.\n2-20MB is reasonable\
    \ and would capture most\nof CTCF-dots.  [default: 2000000]"
  type: long?
  inputBinding:
    prefix: --max-loci-separation
- id: in_max_nans_tolerated
  doc: "Maximum number of NaNs tolerated in a\nfootprint of every used filter. Must\
    \ be\ncontrolled with caution, as large max-nans-\ntolerated, might lead to pixels\
    \ scored in\nthe padding area of the tiles to \"penetrate\"\nto the list of scored\
    \ pixels for the\nstatistical testing. [max-nans-tolerated <=\n2*w ]  [default:\
    \ 1]"
  type: long?
  inputBinding:
    prefix: --max-nans-tolerated
- id: in_tile_size
  doc: "Tile size for the Hi-C heatmap tiling.\nTypically on order of several mega-bases,\n\
    and <= max_loci_separation.  [default:\n6000000]"
  type: long?
  inputBinding:
    prefix: --tile-size
- id: in_kernel_width
  doc: "Outer half-width of the convolution kernel\nin pixels e.g. outer size (w)\
    \ of the 'donut'\nkernel, with the 2*w+1 overall footprint of\nthe 'donut'."
  type: long?
  inputBinding:
    prefix: --kernel-width
- id: in_kernel_peak
  doc: "Inner half-width of the convolution kernel\nin pixels e.g. inner size (p)\
    \ of the 'donut'\nkernel, with the 2*p+1 overall footprint of\nthe punch-hole."
  type: long?
  inputBinding:
    prefix: --kernel-peak
- id: in_num_lambda_chunks
  doc: "Number of log-spaced bins to divide your\nadjusted expected between. Same\
    \ as\nHiCCUPS_W1_MAX_INDX in the original HiCCUPS.\n[default: 45]"
  type: long?
  inputBinding:
    prefix: --num-lambda-chunks
- id: in_fdr
  doc: "False discovery rate (FDR) to control in the\nmultiple hypothesis testing\
    \ BH-FDR\nprocedure.  [default: 0.02]"
  type: double?
  inputBinding:
    prefix: --fdr
- id: in_dots_clustering_radius
  doc: "Radius for clustering dots that have been\ncalled too close to each other.Typically\
    \ on\norder of 40 kilo-bases, and >= binsize.\n[default: 39000]"
  type: long?
  inputBinding:
    prefix: --dots-clustering-radius
- id: in_verbose
  doc: Enable verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output_scores
  doc: "At the moment it is a redundant option that\ndoes nothing. Reserve it for\
    \ a better dump\nof convolved scores."
  type: string?
  inputBinding:
    prefix: --output-scores
- id: in_output_hist_s
  doc: "Specify output file name to store lambda-\nchunked histograms. [Not implemented\
    \ yet]"
  type: File?
  inputBinding:
    prefix: --output-hists
- id: in_output_calls
  doc: "Specify output file name where to store the\nresults of dot-calling, in a\
    \ BEDPE format.\nPre-processed dots are stored in that file.\nPost-processed dots\
    \ are stored in the\n.postproc one."
  type: File?
  inputBinding:
    prefix: --output-calls
- id: in_score_dump_mode
  doc: "Specify file format for the dump of\nconvolved scores. This dump is used for\
    \ the\ndownstream processing and is read twice. Now\n'parquet' is the only supported\
    \ format.\n'cooler' and 'hdf' in the future.  [default:\nparquet]"
  type: File?
  inputBinding:
    prefix: --score-dump-mode
- id: in_temp_dir
  doc: Create temporary files in specified
  type: string?
  inputBinding:
    prefix: --temp-dir
- id: in_no_delete_temp
  doc: Do not delete temporary files when finished.
  type: boolean?
  inputBinding:
    prefix: --no-delete-temp
- id: in_cool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_expected_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_hist_s
  doc: "Specify output file name to store lambda-\nchunked histograms. [Not implemented\
    \ yet]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_hist_s)
- id: out_output_calls
  doc: "Specify output file name where to store the\nresults of dot-calling, in a\
    \ BEDPE format.\nPre-processed dots are stored in that file.\nPost-processed dots\
    \ are stored in the\n.postproc one."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_calls)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0
cwlVersion: v1.1
baseCommand:
- cooltools
- call-dots
