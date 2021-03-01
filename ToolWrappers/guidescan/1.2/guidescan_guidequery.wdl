version 1.0

task GuidescanGuidequery {
  input {
    String? target
    File? path_bam_required
    Int? coordinates_form_example
    File? batch
    File? sequence
    Int? flank_distance
    Boolean? input_coordinates_based
    Directory? name_output_required
    File? output_format
    Boolean? header
    Boolean? off
    Int? sort
    Int? select
    Int? amount_optimal_sgrnas
    File? an_not
    File? feature_bed_file
    File? fast_a_file
    File? blat
  }
  command <<<
    guidescan_guidequery \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(path_bam_required) then ("-b " +  '"' + path_bam_required + '"') else ""} \
      ~{if defined(coordinates_form_example) then ("-c " +  '"' + coordinates_form_example + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(flank_distance) then ("--flankdistance " +  '"' + flank_distance + '"') else ""} \
      ~{if (input_coordinates_based) then "--one" else ""} \
      ~{if defined(name_output_required) then ("-o " +  '"' + name_output_required + '"') else ""} \
      ~{if defined(output_format) then ("--output_format " +  '"' + output_format + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (off) then "--off" else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if defined(amount_optimal_sgrnas) then ("-n " +  '"' + amount_optimal_sgrnas + '"') else ""} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(feature_bed_file) then ("--feature_bed_file " +  '"' + feature_bed_file + '"') else ""} \
      ~{if defined(fast_a_file) then ("--fasta_file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(blat) then ("--blat " +  '"' + blat + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target: "[--flankdistance FLANKDISTANCE]"
    path_bam_required: "path to BAM file with precomputed guideRNAs. REQUIRED"
    coordinates_form_example: "coordinates in the form \\\"<chr>:<start>-<end>\\\"\\n;example: chrX:3364088-3372035, mutually exclusive\\nwith --batch"
    batch: "absolute filepath to a BED file, GTF file where the\\nfirst field (column) contains chromosome information\\n(chr#:), or a txt file composed of a single field\\n(column) of genomic coordinates of the following\\nformat: chr#:start-end, mutually exclusive with -c"
    sequence: "sequence file is fasta file format. sequences will be\\nprocessed through locally installed blat binary and\\nsequences with perfect matches to a specified genome\\nwill be processed. If a perfect match does not exist,\\nthe individual query will not be processed"
    flank_distance: "the distance flanking both the upstream and downstream\\nregions of a target coordinate.Default is 1000."
    input_coordinates_based: "whether input coordinates are 1-based (default is\\n0-based); output is always in BED format and 0-based"
    name_output_required: "name of output directory. REQUIRED"
    output_format: "file format for output can either be bed (bed) or csv\\n(csv) format. Default is csv."
    header: "whether header should be included in output"
    off: "whether detailed info about off-targets of each\\nguideRNA should be included in output (each off-target\\nin a separate line); default is to include only\\nsummary about all off-targets of a guideRNA. Must be\\nutilized with csv output format (which is default)"
    sort: "sort sgRNAs by fewest off-targets (offtargets),\\nhighest Rule 2 Set cutting efficiencyscore (score),\\nhighest CFD cutting specificity (specificity), or\\nsgRNAs closest to the target region (coordinates).\\nDefault is coordinates. Mutually exclusive with\\nselect."
    select: "guidequery chooses n optimal sgRNAs based on\\nemphasizing fewest off-targets then sorts by Rule 2\\nSet cutting efficiency (offtargets) or it chooses n\\noptimal sgRNAsbased on emphasizing highest Rule 2 Set\\ncutting efficiency score then sorts by fewest off-\\ntargets (score). Also can choose n sgRNAs closes to\\ntarget and sorts by offtargets (coordinates). Also can\\nchoose n sgRNAs with highest CFD score and sorts by\\nofftargets. Mutually exclusive with sort."
    amount_optimal_sgrnas: "amount of optimal sgRNAs desired from the --select\\nparameter. Ignored if --select not used. Default is 3."
    an_not: "path to BED file with coordinates of genomic features\\nthat should be used for annotation (format\\n(tabulated): chrom, start, end, name); for example,\\nuse Table Browser https://genome.ucsc.edu/cgi-\\nbin/hgTables to create such BED files of various\\nkinds; alternatively, use here short names for\\npreinstalled exon annotations: \\\"hg38\\\" for human, \\\"dm6\\\"\\nfor fly, \\\"mm10\\\" for mouse, \\\"sacSer3\\\" for yeast, ce11\\nfor c. elegans"
    feature_bed_file: "path to BED file with genomic features of interest\\nsuch that user can upload a BED file with feature\\nnames (in 4th field) and GuideScan will map the\\ngenomic coordinates to the feature"
    fast_a_file: "fasta file with index located in same directory so\\nthat --sequence queries can be processed"
    blat: "absolute filepath to blat tool. Binary packages for\\nlocally running blat are found within GuideScan\\nsoftware at ./blat_binaries"
  }
  output {
    File out_stdout = stdout()
    Directory out_name_output_required = "${in_name_output_required}"
    File out_output_format = "${in_output_format}"
  }
}