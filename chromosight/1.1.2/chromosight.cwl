class: CommandLineTool
id: ../../../chromosight.cwl
inputs:
- id: preset
  doc: 'Generate a preset config for the given pattern. Preset configs available are
    "loops" and "borders". [default: loops]'
  type: string
  inputBinding:
    prefix: --preset
- id: click
  doc: 'Show input contact map and uses double clicks from user to build the kernel.
    Warning: memory-heavy, reserve for small genomes or subsetted matrices.'
  type: string
  inputBinding:
    prefix: --click
- id: force_norm
  doc: Re-compute matrix normalization (balancing) and overwrite weights present in
    the cool files instead of reusing them.
  type: boolean
  inputBinding:
    prefix: --force-norm
- id: inter
  doc: 'Enable to consider interchromosomal contacts. Warning: Experimental feature
    with high memory consumption, only use with small matrices.'
  type: boolean
  inputBinding:
    prefix: --inter
- id: min_dist
  doc: 'Minimum distance from the diagonal (in base pairs). at which detection should
    operate. [default: auto]'
  type: string
  inputBinding:
    prefix: --min-dist
- id: max_dist
  doc: 'Maximum distance from the diagonal (in base pairs)  for detection. [default:
    auto]'
  type: string
  inputBinding:
    prefix: --max-dist
- id: pattern
  doc: 'Which pattern to detect. This will use preset configurations for the given
    pattern. Possible values are: loops, borders, hairpins and centromeres. [default:
    loops]'
  type: string
  inputBinding:
    prefix: --pattern
- id: pearson
  doc: 'Pearson correlation threshold when detecting patterns in the contact map.
    Lower values leads to potentially more detections, but more false positives. [default:
    auto]'
  type: string
  inputBinding:
    prefix: --pearson
- id: subsample
  doc: 'If greater than 1, subsample INT contacts from the matrix. If between 0 and
    1, subsample a proportion of contacts instead. Useful when comparing matrices
    with different coverages. [default: no]'
  type: long
  inputBinding:
    prefix: --subsample
- id: threads
  doc: 'Number of CPUs to use in parallel. [default: 1]'
  type: string
  inputBinding:
    prefix: --threads
- id: perc_undetected
  doc: 'Maximum percentage of non-detectable pixels (nan) in windows allowed to report
    patterns. [default: auto]'
  type: string
  inputBinding:
    prefix: --perc-undetected
- id: perc_zero
  doc: 'Maximum percentage of empty (0) pixels in windows allowed to report patterns.
    [default: auto]'
  type: string
  inputBinding:
    prefix: --perc-zero
- id: dump
  doc: 'Directory where to save matrix dumps during processing and detection. Each
    dump is saved as a compressed npz of a sparse matrix and can be loaded using scipy.sparse.load_npz. '
  type: string
  inputBinding:
    prefix: --dump
- id: iterations
  doc: 'How many iterations to perform after the first template-based pass. [default:
    1]'
  type: string
  inputBinding:
    prefix: --iterations
- id: kernel_config
  doc: Optionally give a path to a custom JSON kernel config path. Use this to override
    pattern if you do not want to use one of the preset patterns.
  type: File
  inputBinding:
    prefix: --kernel-config
- id: no_plotting
  doc: Disable generation of pileup plots.
  type: boolean
  inputBinding:
    prefix: --no-plotting
- id: n_mads
  doc: 'Maximum number of median absolute deviations below the median of the bin sums
    distribution allowed to consider detectable bins. [default: 5]'
  type: string
  inputBinding:
    prefix: --n-mads
- id: min_separation
  doc: 'Minimum distance required between patterns, in basepairs. If two patterns
    are closer than this distance in both axes, the one with the lowest score is discarded.
    [default: auto]'
  type: string
  inputBinding:
    prefix: --min-separation
- id: smooth_trend
  doc: Use isotonic regression when detrending to reduce noise at long ranges. Do
    not enable this for circular genomes.
  type: boolean
  inputBinding:
    prefix: --smooth-trend
- id: t_svd
  doc: Enable kernel factorisation via truncated svd. Accelerates detection, at the
    cost of slight inaccuracies. Singular matrices are truncated to retain 99.9% of
    the information in the kernel.
  type: boolean
  inputBinding:
    prefix: --tsvd
- id: win_fmt
  doc: 'File format used to store individual windows around each pattern. Window order
    matches patterns inside the associated text file. Possible formats are json and
    npy. [default: json]'
  type: string
  inputBinding:
    prefix: --win-fmt
- id: win_size
  doc: 'Window size (width), in pixels, to use for the kernel when computing correlations.
    The pattern kernel will be resized to match this size. Linear  linear interpolation
    is used to fill between pixels. If not specified, the default kernel size will
    be used instead. [default: auto]'
  type: string
  inputBinding:
    prefix: --win-size
- id: hic_contact_map
  doc: The Hi-C contact map to detect patterns on, in bedgraph2d or cool format.
  type: string
  inputBinding:
    position: 0
- id: name_output_directory
  doc: name of the output directory
  type: string
  inputBinding:
    position: 1
- id: bed_two_d
  doc: Tab-separated text files with columns chrom1, start1 end1, chrom2, start2,
    end2. Each line correspond to a pair of positions (i.e. a position in the matrix).
  type: string
  inputBinding:
    position: 0
- id: path_contact_map
  doc: Path to the contact map, in bedgraph2d or cool format.
  type: string
  inputBinding:
    position: 1
- id: output_directory_generated
  doc: output directory where files should be generated.
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: Path prefix for config files. If prefix is a/b, files a/b.json and a/b.1.txt
    will be generated. If a given pattern has N kernel matrices, N txt files are created
    they will be named a/b.[1-N].txt.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosight
