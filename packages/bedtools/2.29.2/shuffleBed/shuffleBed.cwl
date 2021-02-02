class: CommandLineTool
id: shuffleBed.cwl
inputs:
- id: in_excl
  doc: "A BED/GFF/VCF file of coordinates in which features in -i\nshould not be placed\
    \ (e.g. gaps.bed)."
  type: boolean
  inputBinding:
    prefix: -excl
- id: in_incl
  doc: "Instead of randomly placing features in a genome, the -incl\noptions defines\
    \ a BED/GFF/VCF file of coordinates in which\nfeatures in -i should be randomly\
    \ placed (e.g. genes.bed).\nLarger -incl intervals will contain more shuffled\
    \ regions.\nThis method DISABLES -chromFirst."
  type: boolean
  inputBinding:
    prefix: -incl
- id: in_chrom
  doc: "Keep features in -i on the same chromosome.\n- By default, the chrom and position\
    \ are randomly chosen.\n- NOTE: Forces use of -chromFirst (see below)."
  type: boolean
  inputBinding:
    prefix: -chrom
- id: in_seed
  doc: "Supply an integer seed for the shuffling.\n- By default, the seed is chosen\
    \ automatically.\n- (INTEGER)"
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_maximum_overlap_feature
  doc: "Maximum overlap (as a fraction of the -i feature) with an -excl\nfeature that\
    \ is tolerated before searching for a new,\nrandomized locus. For example, -f\
    \ 0.10 allows up to 10%\nof a randomized feature to overlap with a given feature\n\
    in the -excl file. **Cannot be used with -incl file.**\n- Default is 1E-9 (i.e.,\
    \ 1bp).\n- FLOAT (e.g. 0.50)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_chrom_first
  doc: "Instead of choosing a position randomly among the entire\ngenome (the default),\
    \ first choose a chrom randomly, and then\nchoose a random start coordinate on\
    \ that chrom.  This leads\nto features being ~uniformly distributed among the\
    \ chroms,\nas opposed to features being distribute as a function of chrom size."
  type: boolean
  inputBinding:
    prefix: -chromFirst
- id: in_bed_pe
  doc: Indicate that the A file is in BEDPE format.
  type: boolean
  inputBinding:
    prefix: -bedpe
- id: in_max_tries
  doc: "Max. number of attempts to find a home for a shuffled interval\nin the presence\
    \ of -incl or -excl.\nDefault = 1000."
  type: boolean
  inputBinding:
    prefix: -maxTries
- id: in_no_overlapping
  doc: Don't allow shuffled intervals to overlap.
  type: boolean
  inputBinding:
    prefix: -noOverlapping
- id: in_allow_beyond_chrome_nd
  doc: "Allow shuffled intervals to be relocated to a position\nin which the entire\
    \ original interval cannot fit w/o exceeding\nthe end of the chromosome.  In this\
    \ case, the end coordinate of the\nshuffled interval will be set to the chromosome's\
    \ length.\nBy default, an interval's original length must be fully-contained\n\
    within the chromosome."
  type: boolean
  inputBinding:
    prefix: -allowBeyondChromEnd
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_shuffle
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- shuffleBed
