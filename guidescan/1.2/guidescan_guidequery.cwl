class: CommandLineTool
id: guidescan_guidequery.cwl
inputs:
- id: b
  doc: path to BAM file with precomputed guideRNAs. REQUIRED
  type: string
  inputBinding:
    prefix: -b
- id: c
  doc: 'coordinates in the form "<chr>:<start>-<end>" ;example: chrX:3364088-3372035,
    mutually exclusive with --batch'
  type: string
  inputBinding:
    prefix: -c
- id: batch
  doc: 'absolute filepath to a BED file, GTF file where the first field (column) contains
    chromosome information (chr#:), or a txt file composed of a single field (column)
    of genomic coordinates of the following format: chr#:start-end, mutually exclusive
    with -c'
  type: string
  inputBinding:
    prefix: --batch
- id: sequence
  doc: sequence file is fasta file format. sequences will be processed through locally
    installed blat binary and sequences with perfect matches to a specified genome
    will be processed. If a perfect match does not exist, the individual query will
    not be processed
  type: string
  inputBinding:
    prefix: --sequence
- id: target
  doc: get sgRNAs within the target coordinates (within) or flanking the target coordinates(flanks)
    by a distance detailed with the flankdistance parameter. Default is within.
  type: string
  inputBinding:
    prefix: --target
- id: flank_distance
  doc: the distance flanking both the upstream and downstream regions of a target
    coordinate.Default is 1000.
  type: string
  inputBinding:
    prefix: --flankdistance
- id: one
  doc: whether input coordinates are 1-based (default is 0-based); output is always
    in BED format and 0-based
  type: boolean
  inputBinding:
    prefix: --one
- id: o
  doc: name of output directory. REQUIRED
  type: string
  inputBinding:
    prefix: -o
- id: output_format
  doc: file format for output can either be bed (bed) or csv (csv) format. Default
    is csv.
  type: string
  inputBinding:
    prefix: --output_format
- id: header
  doc: whether header should be included in output
  type: boolean
  inputBinding:
    prefix: --header
- id: off
  doc: whether detailed info about off-targets of each guideRNA should be included
    in output (each off-target in a separate line); default is to include only summary
    about all off-targets of a guideRNA. Must be utilized with csv output format (which
    is default)
  type: boolean
  inputBinding:
    prefix: --off
- id: sort
  doc: sort sgRNAs by fewest off-targets (offtargets), highest Rule 2 Set cutting
    efficiencyscore (score), highest CFD cutting specificity (specificity), or sgRNAs
    closest to the target region (coordinates). Default is coordinates. Mutually exclusive
    with select.
  type: string
  inputBinding:
    prefix: --sort
- id: select
  doc: guidequery chooses n optimal sgRNAs based on emphasizing fewest off-targets
    then sorts by Rule 2 Set cutting efficiency (offtargets) or it chooses n optimal
    sgRNAsbased on emphasizing highest Rule 2 Set cutting efficiency score then sorts
    by fewest off- targets (score). Also can choose n sgRNAs closes to target and
    sorts by offtargets (coordinates). Also can choose n sgRNAs with highest CFD score
    and sorts by offtargets. Mutually exclusive with sort.
  type: string
  inputBinding:
    prefix: --select
- id: n
  doc: amount of optimal sgRNAs desired from the --select parameter. Ignored if --select
    not used. Default is 3.
  type: string
  inputBinding:
    prefix: -n
- id: an_not
  doc: 'path to BED file with coordinates of genomic features that should be used
    for annotation (format (tabulated): chrom, start, end, name); for example, use
    Table Browser https://genome.ucsc.edu/cgi- bin/hgTables to create such BED files
    of various kinds; alternatively, use here short names for preinstalled exon annotations:
    "hg38" for human, "dm6" for fly, "mm10" for mouse, "sacSer3" for yeast, ce11 for
    c. elegans'
  type: string
  inputBinding:
    prefix: --annot
- id: feature_bed_file
  doc: path to BED file with genomic features of interest such that user can upload
    a BED file with feature names (in 4th field) and GuideScan will map the genomic
    coordinates to the feature
  type: string
  inputBinding:
    prefix: --feature_bed_file
- id: fast_a_file
  doc: fasta file with index located in same directory so that --sequence queries
    can be processed
  type: string
  inputBinding:
    prefix: --fasta_file
- id: blat
  doc: absolute filepath to blat tool. Binary packages for locally running blat are
    found within GuideScan software at ./blat_binaries
  type: string
  inputBinding:
    prefix: --blat
outputs: []
cwlVersion: v1.1
baseCommand:
- guidescan_guidequery
