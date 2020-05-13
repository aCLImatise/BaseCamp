class: CommandLineTool
id: shuffleBed.cwl
inputs:
- id: chr18_gl000207_random
  doc: '4262'
  type: string
  inputBinding:
    position: 0
- id: excl
  doc: A BED/GFF/VCF file of coordinates in which features in -i should not be placed
    (e.g. gaps.bed).
  type: boolean
  inputBinding:
    prefix: -excl
- id: incl
  doc: 'Instead of randomly placing features in a genome, the -incl options defines
    a BED/GFF/VCF file of coordinates in which  features in -i should be randomly
    placed (e.g. genes.bed).  Larger -incl intervals will contain more shuffled regions.  This
    method DISABLES -chromFirst. '
  type: boolean
  inputBinding:
    prefix: -incl
- id: chrom
  doc: 'Keep features in -i on the same chromosome. - By default, the chrom and position
    are randomly chosen. - NOTE: Forces use of -chromFirst (see below).'
  type: boolean
  inputBinding:
    prefix: -chrom
- id: seed
  doc: Supply an integer seed for the shuffling. - By default, the seed is chosen
    automatically. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -seed
- id: f
  doc: Maximum overlap (as a fraction of the -i feature) with an -excl feature that
    is tolerated before searching for a new,  randomized locus. For example, -f 0.10
    allows up to 10% of a randomized feature to overlap with a given feature in the
    -excl file. **Cannot be used with -incl file.** - Default is 1E-9 (i.e., 1bp).
    - FLOAT (e.g. 0.50)
  type: boolean
  inputBinding:
    prefix: -f
- id: chrom_first
  doc: Instead of choosing a position randomly among the entire genome (the default),
    first choose a chrom randomly, and then choose a random start coordinate on that
    chrom.  This leads to features being ~uniformly distributed among the chroms,
    as opposed to features being distribute as a function of chrom size.
  type: boolean
  inputBinding:
    prefix: -chromFirst
- id: bed_pe
  doc: Indicate that the A file is in BEDPE format.
  type: boolean
  inputBinding:
    prefix: -bedpe
- id: max_tries
  doc: Max. number of attempts to find a home for a shuffled interval in the presence
    of -incl or -excl. Default = 1000.
  type: boolean
  inputBinding:
    prefix: -maxTries
- id: no_overlapping
  doc: Don't allow shuffled intervals to overlap.
  type: boolean
  inputBinding:
    prefix: -noOverlapping
- id: allow_beyond_chrome_nd
  doc: Allow shuffled intervals to be relocated to a position in which the entire
    original interval cannot fit w/o exceeding the end of the chromosome.  In this
    case, the end coordinate of the shuffled interval will be set to the chromosome's
    length. By default, an interval's original length must be fully-contained within
    the chromosome.
  type: boolean
  inputBinding:
    prefix: -allowBeyondChromEnd
outputs: []
cwlVersion: v1.1
baseCommand:
- shuffleBed
