class: CommandLineTool
id: chromosight.cwl
inputs:
- id: in_preset
  doc: "Generate a preset config for the given pattern.\nPreset configs available\
    \ are \"loops\" and\n\"borders\". [default: loops]"
  type: string?
  inputBinding:
    prefix: --preset
- id: in_click
  doc: "Show input contact map and uses double clicks from\nuser to build the kernel.\
    \ Warning: memory-heavy,\nreserve for small genomes or subsetted matrices."
  type: string?
  inputBinding:
    prefix: --click
- id: in_name
  doc: "Only show information related to a particular\nkernel.[default: all]"
  type: string?
  inputBinding:
    prefix: --name
- id: in_long
  doc: Show default parameters in addition to kernel names.
  type: boolean?
  inputBinding:
    prefix: --long
- id: in_mat
  doc: Prints an ascii representation of the kernel matrix.
  type: boolean?
  inputBinding:
    prefix: --mat
- id: in_verbose
  doc: Displays the logo.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_norm
  doc: "Normalization / balancing behaviour. auto: weights\npresent in the cool file\
    \ are used. raw: raw contact\nvalues are used. force: recompute weights and\n\
    overwrite existing values. raw[default: auto]"
  type: string?
  inputBinding:
    prefix: --norm
- id: in_inter
  doc: "Enable to consider interchromosomal contacts.\nWarning: Experimental feature\
    \ with high memory\nconsumption, only use with small matrices."
  type: boolean?
  inputBinding:
    prefix: --inter
- id: in_min_dist
  doc: "Minimum distance from the diagonal (in base pairs).\nat which detection should\
    \ operate. [default: auto]"
  type: long?
  inputBinding:
    prefix: --min-dist
- id: in_max_dist
  doc: "Maximum distance from the diagonal (in base pairs)\nfor detection. [default:\
    \ auto]"
  type: long?
  inputBinding:
    prefix: --max-dist
- id: in_pattern
  doc: "Which pattern to detect. This will use preset\nconfigurations for the given\
    \ pattern. Possible\nvalues are: loops, loops_small, borders, hairpins and\ncentromeres.\
    \ [default: loops]"
  type: string?
  inputBinding:
    prefix: --pattern
- id: in_pearson
  doc: "Pearson correlation threshold when detecting patterns\nin the contact map.\
    \ Lower values leads to potentially\nmore detections, but more false positives.\
    \ [default: auto]"
  type: string?
  inputBinding:
    prefix: --pearson
- id: in_subsample
  doc: "If greater than 1, subsample INT contacts from the\nmatrix. If between 0 and\
    \ 1, subsample a proportion of\ncontacts instead. Useful when comparing matrices\
    \ with\ndifferent coverages. [default: no]"
  type: long?
  inputBinding:
    prefix: --subsample
- id: in_threads
  doc: 'Number of CPUs to use in parallel. [default: 1]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_perc_undetected
  doc: "Maximum percentage of non-detectable pixels (nan) in\nwindows allowed to report\
    \ patterns. [default: auto]"
  type: string?
  inputBinding:
    prefix: --perc-undetected
- id: in_perc_zero
  doc: "Maximum percentage of empty (0) pixels in windows\nallowed to report patterns.\
    \ [default: auto]"
  type: long?
  inputBinding:
    prefix: --perc-zero
- id: in_dump
  doc: "Directory where to save matrix dumps during\nprocessing and detection. Each\
    \ dump is saved as\na compressed npz of a sparse matrix and can be\nloaded using\
    \ scipy.sparse.load_npz."
  type: Directory?
  inputBinding:
    prefix: --dump
- id: in_iterations
  doc: "How many iterations to perform after the first\ntemplate-based pass. [default:\
    \ 1]"
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_kernel_config
  doc: "Optionally give a path to a custom JSON kernel\nconfig path. Use this to override\
    \ pattern if\nyou do not want to use one of the preset\npatterns."
  type: File?
  inputBinding:
    prefix: --kernel-config
- id: in_no_plotting
  doc: Disable generation of pileup plots.
  type: boolean?
  inputBinding:
    prefix: --no-plotting
- id: in_n_mads
  doc: "Maximum number of median absolute deviations below\nthe median of the bin\
    \ sums distribution allowed to\nconsider detectable bins. [default: 5]"
  type: long?
  inputBinding:
    prefix: --n-mads
- id: in_min_separation
  doc: "Minimum distance required between patterns, in\nbasepairs. If two patterns\
    \ are closer than this\ndistance in both axes, the one with the lowest\nscore\
    \ is discarded. [default: auto]"
  type: long?
  inputBinding:
    prefix: --min-separation
- id: in_smooth_trend
  doc: "Use isotonic regression when detrending to reduce\nnoise at long ranges. Do\
    \ not enable this for circular\ngenomes."
  type: boolean?
  inputBinding:
    prefix: --smooth-trend
- id: in_t_svd
  doc: "Enable kernel factorisation via truncated svd.\nAccelerates detection, at\
    \ the cost of slight\ninaccuracies. Singular matrices are truncated to\nretain\
    \ 99.9% of the information in the kernel."
  type: boolean?
  inputBinding:
    prefix: --tsvd
- id: in_win_fmt
  doc: "File format used to store individual windows\naround each pattern. Window\
    \ order matches\npatterns inside the associated text file.\nPossible formats are\
    \ json and npy. [default: json]"
  type: string?
  inputBinding:
    prefix: --win-fmt
- id: in_win_size
  doc: "Window size (width), in pixels, to use for the\nkernel when computing correlations.\
    \ The pattern\nkernel will be resized to match this size. Linear\nlinear interpolation\
    \ is used to fill between pixels.\nIf not specified, the default kernel size will\n\
    be used instead. [default: auto]\n"
  type: long?
  inputBinding:
    prefix: --win-size
- id: in_convolution_dot
  doc: 'quantify:'
  type: string
  inputBinding:
    position: 0
- id: in_hic_contact_map
  doc: "The Hi-C contact map to detect patterns on, in\nbedgraph2d or cool format."
  type: string
  inputBinding:
    position: 0
- id: in_prefix
  doc: "Common path prefix used to generate output files.\nExtensions will be added\
    \ for each file."
  type: string
  inputBinding:
    position: 1
- id: in_bed_two_d
  doc: "Tab-separated text files with columns chrom1, start1\nend1, chrom2, start2,\
    \ end2. Each line correspond to\na pair of positions (i.e. a position in the matrix)."
  type: long
  inputBinding:
    position: 0
- id: in_path_contact_map
  doc: "Path to the contact map, in bedgraph2d or\ncool format."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chromosight:1.4.1--py_0
cwlVersion: v1.1
baseCommand:
- chromosight
