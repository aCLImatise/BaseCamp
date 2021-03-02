class: CommandLineTool
id: genomeCoverageBed.cwl
inputs:
- id: in_i_bam
  doc: "The input file is in BAM format.\nNote: BAM _must_ be sorted by position"
  type: boolean?
  inputBinding:
    prefix: -ibam
- id: in_report_depth_onebased
  doc: "Report the depth at each genome position (with one-based coordinates).\nDefault\
    \ behavior is to report a histogram."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_dz
  doc: "Report the depth at each genome position (with zero-based coordinates).\n\
    Reports only non-zero positions.\nDefault behavior is to report a histogram."
  type: boolean?
  inputBinding:
    prefix: -dz
- id: in_bg
  doc: "Report depth in BedGraph format. For details, see:\ngenome.ucsc.edu/goldenPath/help/bedgraph.html"
  type: boolean?
  inputBinding:
    prefix: -bg
- id: in_bga
  doc: "Report depth in BedGraph format, as above (-bg).\nHowever with this option,\
    \ regions with zero\ncoverage are also reported. This allows one to\nquickly extract\
    \ all regions of a genome with 0\ncoverage by applying: \"grep -w 0$\" to the\
    \ output."
  type: boolean?
  inputBinding:
    prefix: -bga
- id: in_split
  doc: "Treat \"split\" BAM or BED12 entries as distinct BED intervals.\nwhen computing\
    \ coverage.\nFor BAM files, this uses the CIGAR \"N\" and \"D\" operations\nto\
    \ infer the blocks for computing coverage.\nFor BED12 files, this uses the BlockCount,\
    \ BlockStarts, and BlockEnds\nfields (i.e., columns 10,11,12)."
  type: boolean?
  inputBinding:
    prefix: -split
- id: in_ignored
  doc: "Ignore local deletions (CIGAR \"D\" operations) in BAM entries\nwhen computing\
    \ coverage."
  type: boolean?
  inputBinding:
    prefix: -ignoreD
- id: in_strand
  doc: "Calculate coverage of intervals from a specific strand.\nWith BED files, requires\
    \ at least 6 columns (strand is column 6).\n- (STRING): can be + or -"
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_pc
  doc: "Calculate coverage of pair-end fragments.\nWorks for BAM files only"
  type: boolean?
  inputBinding:
    prefix: -pc
- id: in_fs
  doc: "Force to use provided fragment size instead of read length\nWorks for BAM\
    \ files only"
  type: boolean?
  inputBinding:
    prefix: -fs
- id: in_du
  doc: "Change strand af the mate read (so both reads from the same strand) useful\
    \ for strand specific\nWorks for BAM files only"
  type: boolean?
  inputBinding:
    prefix: -du
- id: in_five
  doc: Calculate coverage of 5" positions (instead of entire interval).
  type: boolean?
  inputBinding:
    prefix: '-5'
- id: in_three
  doc: Calculate coverage of 3" positions (instead of entire interval).
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_max
  doc: "Combine all positions with a depth >= max into\na single bin in the histogram.\
    \ Irrelevant\nfor -d and -bedGraph\n- (INTEGER)"
  type: boolean?
  inputBinding:
    prefix: -max
- id: in_scale
  doc: "Scale the coverage by a constant factor.\nEach coverage value is multiplied\
    \ by this factor before being reported.\nUseful for normalizing coverage by, e.g.,\
    \ reads per million (RPM).\n- Default is 1.0; i.e., unscaled.\n- (FLOAT)"
  type: boolean?
  inputBinding:
    prefix: -scale
- id: in_track_line
  doc: "Adds a UCSC/Genome-Browser track line definition in the first line of the\
    \ output.\n- See here for more details about track line definition:\nhttp://genome.ucsc.edu/goldenPath/help/bedgraph.html\n\
    - NOTE: When adding a trackline definition, the output BedGraph can be easily\n\
    uploaded to the Genome Browser as a custom track,\nBUT CAN NOT be converted into\
    \ a BigWig file (w/o removing the first line)."
  type: File?
  inputBinding:
    prefix: -trackline
- id: in_track_opts
  doc: "Writes additional track line definition parameters in the first line.\n- Example:\n\
    -trackopts 'name=\"My Track\" visibility=2 color=255,30,30'\nNote the use of single-quotes\
    \ if you have spaces in your parameters.\n- (TEXT)"
  type: boolean?
  inputBinding:
    prefix: -trackopts
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome_cov
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_track_line
  doc: "Adds a UCSC/Genome-Browser track line definition in the first line of the\
    \ output.\n- See here for more details about track line definition:\nhttp://genome.ucsc.edu/goldenPath/help/bedgraph.html\n\
    - NOTE: When adding a trackline definition, the output BedGraph can be easily\n\
    uploaded to the Genome Browser as a custom track,\nBUT CAN NOT be converted into\
    \ a BigWig file (w/o removing the first line)."
  type: File?
  outputBinding:
    glob: $(inputs.in_track_line)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- genomeCoverageBed
