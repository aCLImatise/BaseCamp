version 1.0

task ShuffleBed {
  input {
    Boolean? excl
    Boolean? incl
    Boolean? chrom
    Boolean? seed
    Boolean? maximum_overlap_fraction
    Boolean? chrom_first
    Boolean? bed_pe
    Boolean? max_tries
    Boolean? no_overlapping
    Boolean? allow_beyond_chrome_nd
    String? i
    String? g
    String bed_tools
    String shuffle
  }
  command <<<
    shuffleBed \
      ~{bed_tools} \
      ~{shuffle} \
      ~{true="-excl" false="" excl} \
      ~{true="-incl" false="" incl} \
      ~{true="-chrom" false="" chrom} \
      ~{true="-seed" false="" seed} \
      ~{true="-f" false="" maximum_overlap_fraction} \
      ~{true="-chromFirst" false="" chrom_first} \
      ~{true="-bedpe" false="" bed_pe} \
      ~{true="-maxTries" false="" max_tries} \
      ~{true="-noOverlapping" false="" no_overlapping} \
      ~{true="-allowBeyondChromEnd" false="" allow_beyond_chrome_nd} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    excl: "A BED/GFF/VCF file of coordinates in which features in -i should not be placed (e.g. gaps.bed)."
    incl: "Instead of randomly placing features in a genome, the -incl options defines a BED/GFF/VCF file of coordinates in which  features in -i should be randomly placed (e.g. genes.bed).  Larger -incl intervals will contain more shuffled regions.  This method DISABLES -chromFirst. "
    chrom: "Keep features in -i on the same chromosome. - By default, the chrom and position are randomly chosen. - NOTE: Forces use of -chromFirst (see below)."
    seed: "Supply an integer seed for the shuffling. - By default, the seed is chosen automatically. - (INTEGER)"
    maximum_overlap_fraction: "Maximum overlap (as a fraction of the -i feature) with an -excl feature that is tolerated before searching for a new,  randomized locus. For example, -f 0.10 allows up to 10% of a randomized feature to overlap with a given feature in the -excl file. **Cannot be used with -incl file.** - Default is 1E-9 (i.e., 1bp). - FLOAT (e.g. 0.50)"
    chrom_first: "Instead of choosing a position randomly among the entire genome (the default), first choose a chrom randomly, and then choose a random start coordinate on that chrom.  This leads to features being ~uniformly distributed among the chroms, as opposed to features being distribute as a function of chrom size."
    bed_pe: "Indicate that the A file is in BEDPE format."
    max_tries: "Max. number of attempts to find a home for a shuffled interval in the presence of -incl or -excl. Default = 1000."
    no_overlapping: "Don't allow shuffled intervals to overlap."
    allow_beyond_chrome_nd: "Allow shuffled intervals to be relocated to a position in which the entire original interval cannot fit w/o exceeding the end of the chromosome.  In this case, the end coordinate of the shuffled interval will be set to the chromosome's length. By default, an interval's original length must be fully-contained within the chromosome."
    i: ""
    g: ""
    bed_tools: ""
    shuffle: ""
  }
}