class: CommandLineTool
id: chromosight.cwl
inputs:
- id: contact_map
  doc: The Hi-C contact map to detect patterns on, in bedgraph2d or cool format.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: name of the output directory
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: Path prefix for config files. If prefix is a/b, files a/b.json and a/b.1.txt
    will be generated. If a given pattern has N kernel matrices, N txt files are created
    they will be named a/b.[1-N].txt.
  type: string
  inputBinding:
    position: 0
- id: bed2d
  doc: Tab-separated text files with columns chrom1, start1 end1, chrom2, start2,
    end2. Each line correspond to a pair of positions (i.e. a position in the matrix).
  type: string
  inputBinding:
    position: 0
- id: contact_map
  doc: Path to the contact map, in bedgraph2d or cool format.
  type: string
  inputBinding:
    position: 1
- id: output
  doc: output directory where files should be generated.
  type: string
  inputBinding:
    position: 2
- id: dump
  doc: Directory where to save matrix dumps during processing and detection. Each
    dump is saved as a compressed npz of a sparse matrix and can be loaded using scipy.sparse.load_npz.
    Disabled by default.
  type: string
  inputBinding:
    prefix: --dump
- id: full
  doc: "Enable 'full' convolution mode: The whole matrix is scanned all the way to\
    \ edges and missing bins are masked. This will allow to detect very close to the\
    \ diagonal and close to repeated sequences at the cost of memory and compute time."
  type: boolean
  inputBinding:
    prefix: --full
- id: force_norm
  doc: Re-compute matrix normalization (balancing) and overwrite weights present in
    the cool files instead of reusing them.
  type: boolean
  inputBinding:
    prefix: --force-norm
- id: inter
  doc: 'Enable to consider interchromosomal contacts. Warning: Experimental feature
    with very high memory consumption is very high, only use with small matrices.'
  type: boolean
  inputBinding:
    prefix: --inter
- id: iterations
  doc: 'How many iterations to perform after the first template-based pass. Auto sets
    an appropriate value loaded from the kernel configuration file. [default: 1]'
  type: string
  inputBinding:
    prefix: --iterations
- id: kernel_config
  doc: Optionally give a path to a custom JSON kernel config path. Use this to override
    pattern if you do not want to use one of the preset patterns.
  type: File
  inputBinding:
    prefix: --kernel-config
- id: min_dist
  doc: 'Minimum distance from the diagonal (in base pairs). If this value is smaller
    than the kernel size, the kernel will be cropped to avoid overlapping the diagonal,
    up to a min.size of 7x7. [default: auto]'
  type: string
  inputBinding:
    prefix: --min-dist
- id: max_dist
  doc: 'Maximum distance from the diagonal (in base pairs) at which pattern detection
    should operate. Auto sets a value based on the kernel configuration file and the
    signal to noise ratio. [default: auto]'
  type: string
  inputBinding:
    prefix: --max-dist
- id: no_plotting
  doc: Disable generation of pileup plots.
  type: boolean
  inputBinding:
    prefix: --no-plotting
- id: n_mads
  doc: '=5              Maximum number of median absolute deviations below the median
    of the logged bin sums distribution allowed to consider detectable bins. [default:
    5]'
  type: boolean
  inputBinding:
    prefix: --n-mads
- id: pattern
  doc: 'Which pattern to detect. This will use preset configurations for the given
    pattern. Possible values are: loops, borders, hairpins and centromeres. [default:
    loops]'
  type: string
  inputBinding:
    prefix: --pattern
- id: pearson
  doc: 'Pearson correlation threshold when assessing pattern probability in the contact
    map. A lesser value leads to potentially more detections, but more false positives.
    [default: auto]'
  type: string
  inputBinding:
    prefix: --pearson
- id: subsample
  doc: 'If greater than 1, subsample contacts from the matrix to INT contacts. If
    between 0 and 1, subsample a proportion of contacts instead. This is useful when
    comparing matrices with different coverages. [default: no]'
  type: long
  inputBinding:
    prefix: --subsample
- id: min_separation
  doc: 'Minimum distance required between patterns, in basepairs. If two patterns
    are closer than this distance in both axes, the one with the lowest score is discarded.
    [default: auto]'
  type: string
  inputBinding:
    prefix: --min-separation
- id: threads
  doc: '=1             Number of CPUs to use in parallel. [default: 1]'
  type: boolean
  inputBinding:
    prefix: --threads
- id: smooth_trend
  doc: Use isotonic regression to reduce noise at long ranges caused by detrending.
    Do not enable this for circular genomes.
  type: boolean
  inputBinding:
    prefix: --smooth-trend
- id: perc_undetected
  doc: 'Maximum percentage of empty pixels in windows allowed to keep detected patterns.
    [default: auto]'
  type: string
  inputBinding:
    prefix: --perc-undetected
- id: win_fmt
  doc: 'File format used to store individual windows around each pattern. Window order
    match patterns inside the associated text file. Possible formats are json and
    npy. [default: json]'
  type: string
  inputBinding:
    prefix: --win-fmt
- id: win_size
  doc: 'Window size (width), in pixels, to use for the kernel when computing correlations.
    The pattern kernel will be resized to match this size. If the pattern must be
    enlarged, linear interpolation is used to fill between pixels. If not specified,
    the default kernel size will be used instead. [default: auto]'
  type: string
  inputBinding:
    prefix: --win-size
- id: t_svd
  doc: Enable kernel factorisation via truncated svd. This should accelerate detection
    in most cases, at the cost of slight inaccuracies. The singular matrices are truncated
    so that 99.9% of the information contained in the kernel is retained.
  type: boolean
  inputBinding:
    prefix: --tsvd
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
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosight
