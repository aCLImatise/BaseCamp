#!/usr/bin/env cwl-runner

baseCommand:
- guidescan_guidequery
class: CommandLineTool
cwlVersion: v1.0
id: guidescan_guidequery
inputs:
- doc: path to BAM file with precomputed guideRNAs. REQUIRED
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: 'coordinates in the form "<chr>:<start>-<end>" ;example: chrX:3364088-3372035,
    mutually exclusive with --batch'
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: 'absolute filepath to a BED file, GTF file where the first field (column) contains
    chromosome information (chr#:), or a txt file composed of a single field (column)
    of genomic coordinates of the following format: chr#:start-end, mutually exclusive
    with -c'
  id: batch
  inputBinding:
    prefix: --batch
  type: string
- doc: sequence file is fasta file format. sequences will be processed through locally
    installed blat binary and sequences with perfect matches to a specified genome
    will be processed. If a perfect match does not exist, the individual query will
    not be processed
  id: sequence
  inputBinding:
    prefix: --sequence
  type: string
- doc: get sgRNAs within the target coordinates (within) or flanking the target coordinates(flanks)
    by a distance detailed with the flankdistance parameter. Default is within.
  id: target
  inputBinding:
    prefix: --target
  type: string
- doc: the distance flanking both the upstream and downstream regions of a target
    coordinate.Default is 1000.
  id: flank_distance
  inputBinding:
    prefix: --flankdistance
  type: string
- doc: whether input coordinates are 1-based (default is 0-based); output is always
    in BED format and 0-based
  id: one
  inputBinding:
    prefix: --one
  type: boolean
- doc: name of output directory. REQUIRED
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: file format for output can either be bed (bed) or csv (csv) format. Default
    is csv.
  id: output_format
  inputBinding:
    prefix: --output_format
  type: string
- doc: whether header should be included in output
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: whether detailed info about off-targets of each guideRNA should be included
    in output (each off-target in a separate line); default is to include only summary
    about all off-targets of a guideRNA. Must be utilized with csv output format (which
    is default)
  id: off
  inputBinding:
    prefix: --off
  type: boolean
- doc: sort sgRNAs by fewest off-targets (offtargets), highest Rule 2 Set cutting
    efficiencyscore (score), highest CFD cutting specificity (specificity), or sgRNAs
    closest to the target region (coordinates). Default is coordinates. Mutually exclusive
    with select.
  id: sort
  inputBinding:
    prefix: --sort
  type: string
- doc: guidequery chooses n optimal sgRNAs based on emphasizing fewest off-targets
    then sorts by Rule 2 Set cutting efficiency (offtargets) or it chooses n optimal
    sgRNAsbased on emphasizing highest Rule 2 Set cutting efficiency score then sorts
    by fewest off- targets (score). Also can choose n sgRNAs closes to target and
    sorts by offtargets (coordinates). Also can choose n sgRNAs with highest CFD score
    and sorts by offtargets. Mutually exclusive with sort.
  id: select
  inputBinding:
    prefix: --select
  type: string
- doc: amount of optimal sgRNAs desired from the --select parameter. Ignored if --select
    not used. Default is 3.
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: 'path to BED file with coordinates of genomic features that should be used
    for annotation (format (tabulated): chrom, start, end, name); for example, use
    Table Browser https://genome.ucsc.edu/cgi- bin/hgTables to create such BED files
    of various kinds; alternatively, use here short names for preinstalled exon annotations:
    "hg38" for human, "dm6" for fly, "mm10" for mouse, "sacSer3" for yeast, ce11 for
    c. elegans'
  id: an_not
  inputBinding:
    prefix: --annot
  type: string
- doc: path to BED file with genomic features of interest such that user can upload
    a BED file with feature names (in 4th field) and GuideScan will map the genomic
    coordinates to the feature
  id: feature_bed_file
  inputBinding:
    prefix: --feature_bed_file
  type: string
- doc: fasta file with index located in same directory so that --sequence queries
    can be processed
  id: fast_a_file
  inputBinding:
    prefix: --fasta_file
  type: string
- doc: absolute filepath to blat tool. Binary packages for locally running blat are
    found within GuideScan software at ./blat_binaries
  id: blat
  inputBinding:
    prefix: --blat
  type: string
