version 1.0

task ShuffleBed {
  input {
    Boolean? excl
    Boolean? incl
    Boolean? chrom
    Boolean? seed
    Boolean? maximum_overlap_feature
    Boolean? chrom_first
    Boolean? bed_pe
    Boolean? max_tries
    Boolean? no_overlapping
    Boolean? allow_beyond_chrome_nd
    String? g
    String? i
    String bed_tools
    String shuffle
  }
  command <<<
    shuffleBed \
      ~{bed_tools} \
      ~{shuffle} \
      ~{if (excl) then "-excl" else ""} \
      ~{if (incl) then "-incl" else ""} \
      ~{if (chrom) then "-chrom" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (maximum_overlap_feature) then "-f" else ""} \
      ~{if (chrom_first) then "-chromFirst" else ""} \
      ~{if (bed_pe) then "-bedpe" else ""} \
      ~{if (max_tries) then "-maxTries" else ""} \
      ~{if (no_overlapping) then "-noOverlapping" else ""} \
      ~{if (allow_beyond_chrome_nd) then "-allowBeyondChromEnd" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    excl: "A BED/GFF/VCF file of coordinates in which features in -i\\nshould not be placed (e.g. gaps.bed)."
    incl: "Instead of randomly placing features in a genome, the -incl\\noptions defines a BED/GFF/VCF file of coordinates in which\\nfeatures in -i should be randomly placed (e.g. genes.bed).\\nLarger -incl intervals will contain more shuffled regions.\\nThis method DISABLES -chromFirst."
    chrom: "Keep features in -i on the same chromosome.\\n- By default, the chrom and position are randomly chosen.\\n- NOTE: Forces use of -chromFirst (see below)."
    seed: "Supply an integer seed for the shuffling.\\n- By default, the seed is chosen automatically.\\n- (INTEGER)"
    maximum_overlap_feature: "Maximum overlap (as a fraction of the -i feature) with an -excl\\nfeature that is tolerated before searching for a new,\\nrandomized locus. For example, -f 0.10 allows up to 10%\\nof a randomized feature to overlap with a given feature\\nin the -excl file. **Cannot be used with -incl file.**\\n- Default is 1E-9 (i.e., 1bp).\\n- FLOAT (e.g. 0.50)"
    chrom_first: "Instead of choosing a position randomly among the entire\\ngenome (the default), first choose a chrom randomly, and then\\nchoose a random start coordinate on that chrom.  This leads\\nto features being ~uniformly distributed among the chroms,\\nas opposed to features being distribute as a function of chrom size."
    bed_pe: "Indicate that the A file is in BEDPE format."
    max_tries: "Max. number of attempts to find a home for a shuffled interval\\nin the presence of -incl or -excl.\\nDefault = 1000."
    no_overlapping: "Don't allow shuffled intervals to overlap."
    allow_beyond_chrome_nd: "Allow shuffled intervals to be relocated to a position\\nin which the entire original interval cannot fit w/o exceeding\\nthe end of the chromosome.  In this case, the end coordinate of the\\nshuffled interval will be set to the chromosome's length.\\nBy default, an interval's original length must be fully-contained\\nwithin the chromosome."
    g: ""
    i: ""
    bed_tools: ""
    shuffle: ""
  }
  output {
    File out_stdout = stdout()
  }
}