class: CommandLineTool
id: ../../../genomeCoverageBed.cwl
inputs:
- id: i_bam
  doc: 'The input file is in BAM format. Note: BAM _must_ be sorted by position'
  type: boolean
  inputBinding:
    prefix: -ibam
- id: report_depth_onebased
  doc: Report the depth at each genome position (with one-based coordinates). Default
    behavior is to report a histogram.
  type: boolean
  inputBinding:
    prefix: -d
- id: dz
  doc: Report the depth at each genome position (with zero-based coordinates). Reports
    only non-zero positions. Default behavior is to report a histogram.
  type: boolean
  inputBinding:
    prefix: -dz
- id: bg
  doc: 'Report depth in BedGraph format. For details, see: genome.ucsc.edu/goldenPath/help/bedgraph.html'
  type: boolean
  inputBinding:
    prefix: -bg
- id: bga
  doc: 'Report depth in BedGraph format, as above (-bg). However with this option,
    regions with zero  coverage are also reported. This allows one to quickly extract
    all regions of a genome with 0  coverage by applying: "grep -w 0$" to the output.'
  type: boolean
  inputBinding:
    prefix: -bga
- id: split
  doc: Treat "split" BAM or BED12 entries as distinct BED intervals. when computing
    coverage. For BAM files, this uses the CIGAR "N" and "D" operations  to infer
    the blocks for computing coverage. For BED12 files, this uses the BlockCount,
    BlockStarts, and BlockEnds fields (i.e., columns 10,11,12).
  type: boolean
  inputBinding:
    prefix: -split
- id: strand
  doc: 'Calculate coverage of intervals from a specific strand. With BED files, requires
    at least 6 columns (strand is column 6).  - (STRING): can be + or -'
  type: boolean
  inputBinding:
    prefix: -strand
- id: pc
  doc: Calculate coverage of pair-end fragments. Works for BAM files only
  type: boolean
  inputBinding:
    prefix: -pc
- id: fs
  doc: Force to use provided fragment size instead of read length Works for BAM files
    only
  type: boolean
  inputBinding:
    prefix: -fs
- id: du
  doc: Change strand af the mate read (so both reads from the same strand) useful
    for strand specific Works for BAM files only
  type: boolean
  inputBinding:
    prefix: -du
- id: five
  doc: Calculate coverage of 5" positions (instead of entire interval).
  type: boolean
  inputBinding:
    prefix: '-5'
- id: three
  doc: Calculate coverage of 3" positions (instead of entire interval).
  type: boolean
  inputBinding:
    prefix: '-3'
- id: max
  doc: Combine all positions with a depth >= max into a single bin in the histogram.
    Irrelevant for -d and -bedGraph - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -max
- id: scale
  doc: Scale the coverage by a constant factor. Each coverage value is multiplied
    by this factor before being reported. Useful for normalizing coverage by, e.g.,
    reads per million (RPM). - Default is 1.0; i.e., unscaled. - (FLOAT)
  type: boolean
  inputBinding:
    prefix: -scale
- id: track_line
  doc: 'Adds a UCSC/Genome-Browser track line definition in the first line of the
    output. - See here for more details about track line definition: http://genome.ucsc.edu/goldenPath/help/bedgraph.html
    - NOTE: When adding a trackline definition, the output BedGraph can be easily
    uploaded to the Genome Browser as a custom track, BUT CAN NOT be converted into
    a BigWig file (w/o removing the first line).'
  type: boolean
  inputBinding:
    prefix: -trackline
- id: track_opts
  doc: "Writes additional track line definition parameters in the first line. - Example:\
    \ -trackopts 'name=\"My Track\" visibility=2 color=255,30,30' Note the use of\
    \ single-quotes if you have spaces in your parameters. - (TEXT)"
  type: boolean
  inputBinding:
    prefix: -trackopts
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_cov
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genomeCoverageBed
