version 1.0

task GuidescanGuidequery {
  input {
    String? path_bam_file
    String? coordinates_form_example
    String? batch
    String? sequence
    String? target
    String? flank_distance
    Boolean? input_coordinates_based
    String? name_output_directory
    String? output_format
    Boolean? header
    Boolean? off
    String? sort
    String? select
    String? amount_sgrnas_desired
    String? an_not
    String? feature_bed_file
    String? fast_a_file
    String? blat
  }
  command <<<
    guidescan_guidequery \
      ~{if defined(path_bam_file) then ("-b " +  '"' + path_bam_file + '"') else ""} \
      ~{if defined(coordinates_form_example) then ("-c " +  '"' + coordinates_form_example + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(flank_distance) then ("--flankdistance " +  '"' + flank_distance + '"') else ""} \
      ~{true="--one" false="" input_coordinates_based} \
      ~{if defined(name_output_directory) then ("-o " +  '"' + name_output_directory + '"') else ""} \
      ~{if defined(output_format) then ("--output_format " +  '"' + output_format + '"') else ""} \
      ~{true="--header" false="" header} \
      ~{true="--off" false="" off} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if defined(amount_sgrnas_desired) then ("-n " +  '"' + amount_sgrnas_desired + '"') else ""} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(feature_bed_file) then ("--feature_bed_file " +  '"' + feature_bed_file + '"') else ""} \
      ~{if defined(fast_a_file) then ("--fasta_file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(blat) then ("--blat " +  '"' + blat + '"') else ""}
  >>>
  parameter_meta {
    path_bam_file: "path to BAM file with precomputed guideRNAs. REQUIRED"
    coordinates_form_example: "coordinates in the form \"<chr>:<start>-<end>\" ;example: chrX:3364088-3372035, mutually exclusive with --batch"
    batch: "absolute filepath to a BED file, GTF file where the first field (column) contains chromosome information (chr#:), or a txt file composed of a single field (column) of genomic coordinates of the following format: chr#:start-end, mutually exclusive with -c"
    sequence: "sequence file is fasta file format. sequences will be processed through locally installed blat binary and sequences with perfect matches to a specified genome will be processed. If a perfect match does not exist, the individual query will not be processed"
    target: "get sgRNAs within the target coordinates (within) or flanking the target coordinates(flanks) by a distance detailed with the flankdistance parameter. Default is within."
    flank_distance: "the distance flanking both the upstream and downstream regions of a target coordinate.Default is 1000."
    input_coordinates_based: "whether input coordinates are 1-based (default is 0-based); output is always in BED format and 0-based"
    name_output_directory: "name of output directory. REQUIRED"
    output_format: "file format for output can either be bed (bed) or csv (csv) format. Default is csv."
    header: "whether header should be included in output"
    off: "whether detailed info about off-targets of each guideRNA should be included in output (each off-target in a separate line); default is to include only summary about all off-targets of a guideRNA. Must be utilized with csv output format (which is default)"
    sort: "sort sgRNAs by fewest off-targets (offtargets), highest Rule 2 Set cutting efficiencyscore (score), highest CFD cutting specificity (specificity), or sgRNAs closest to the target region (coordinates). Default is coordinates. Mutually exclusive with select."
    select: "guidequery chooses n optimal sgRNAs based on emphasizing fewest off-targets then sorts by Rule 2 Set cutting efficiency (offtargets) or it chooses n optimal sgRNAsbased on emphasizing highest Rule 2 Set cutting efficiency score then sorts by fewest off- targets (score). Also can choose n sgRNAs closes to target and sorts by offtargets (coordinates). Also can choose n sgRNAs with highest CFD score and sorts by offtargets. Mutually exclusive with sort."
    amount_sgrnas_desired: "amount of optimal sgRNAs desired from the --select parameter. Ignored if --select not used. Default is 3."
    an_not: "path to BED file with coordinates of genomic features that should be used for annotation (format (tabulated): chrom, start, end, name); for example, use Table Browser https://genome.ucsc.edu/cgi- bin/hgTables to create such BED files of various kinds; alternatively, use here short names for preinstalled exon annotations: \"hg38\" for human, \"dm6\" for fly, \"mm10\" for mouse, \"sacSer3\" for yeast, ce11 for c. elegans"
    feature_bed_file: "path to BED file with genomic features of interest such that user can upload a BED file with feature names (in 4th field) and GuideScan will map the genomic coordinates to the feature"
    fast_a_file: "fasta file with index located in same directory so that --sequence queries can be processed"
    blat: "absolute filepath to blat tool. Binary packages for locally running blat are found within GuideScan software at ./blat_binaries"
  }
}