version 1.0

task Spamo {
  input {
    Directory? create_directory_write
    Directory? oc
    String? min_score
    Int? margin
    Int? bin
    Int? range
    Boolean? use_best_sec
    String? shared
    String? odds
    String? cut_off
    String? evalue
    Int? overlap
    String? joint
    String? pseudo
    File? bg_file
    Boolean? x_alph
    String? trim
    String? num_gen
    String? primary
    String? primary_i
    Boolean? keep_primary
    String? inc
    String? exc
    Boolean? text
    Boolean? eps
    Boolean? png
    Boolean? dumps_eqs
    Boolean? dump_sigs
    String? verbosity
    Boolean? version
    String sequences
    String primary_motif
    String secondary_motifs
  }
  command <<<
    spamo \
      ~{sequences} \
      ~{primary_motif} \
      ~{secondary_motifs} \
      ~{if defined(create_directory_write) then ("-o " +  '"' + create_directory_write + '"') else ""} \
      ~{if defined(oc) then ("-oc " +  '"' + oc + '"') else ""} \
      ~{if defined(min_score) then ("-minscore " +  '"' + min_score + '"') else ""} \
      ~{if defined(margin) then ("-margin " +  '"' + margin + '"') else ""} \
      ~{if defined(bin) then ("-bin " +  '"' + bin + '"') else ""} \
      ~{if defined(range) then ("-range " +  '"' + range + '"') else ""} \
      ~{true="-usebestsec" false="" use_best_sec} \
      ~{if defined(shared) then ("-shared " +  '"' + shared + '"') else ""} \
      ~{if defined(odds) then ("-odds " +  '"' + odds + '"') else ""} \
      ~{if defined(cut_off) then ("-cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(evalue) then ("-evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(overlap) then ("-overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(joint) then ("-joint " +  '"' + joint + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if defined(bg_file) then ("-bgfile " +  '"' + bg_file + '"') else ""} \
      ~{true="-xalph" false="" x_alph} \
      ~{if defined(trim) then ("-trim " +  '"' + trim + '"') else ""} \
      ~{if defined(num_gen) then ("-numgen " +  '"' + num_gen + '"') else ""} \
      ~{if defined(primary) then ("-primary " +  '"' + primary + '"') else ""} \
      ~{if defined(primary_i) then ("-primaryi " +  '"' + primary_i + '"') else ""} \
      ~{true="-keepprimary" false="" keep_primary} \
      ~{if defined(inc) then ("-inc " +  '"' + inc + '"') else ""} \
      ~{if defined(exc) then ("-exc " +  '"' + exc + '"') else ""} \
      ~{true="-text" false="" text} \
      ~{true="-eps" false="" eps} \
      ~{true="-png" false="" png} \
      ~{true="-dumpseqs" false="" dumps_eqs} \
      ~{true="-dumpsigs" false="" dump_sigs} \
      ~{if defined(verbosity) then ("-verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    create_directory_write: "create the directory and write output files in it; not compatible with -oc"
    oc: "create the directory but if it already exists allow overwriting the contents; default: spamo_out"
    min_score: "the minimum score (bits) to accept as a motif match; default: 7 Note: if <valu> is in the range [-1, 0), then the minimum score is set to: -<valu>*pwm_maximum_score"
    margin: "edge margin excluded for primary motif matches and the maximum distance from the primary motif to the secondary motif; default: 150"
    bin: "size of bins used for output; default: 1"
    range: "the range from the primary to include in significance tests; default: 150"
    use_best_sec: "use only the best match of the secondary motif; default: count all secondary matches above the score match threshold in the margins around the primary motif match"
    shared: "fraction of shared trimmed sequence content that is required to exclude the sequence as redundant; set <fract> to 0 to skip sequence redundancy check; default: 0.5"
    odds: "odds ratio used for speedup of the redundant sequence check; low values may cause some  redundant sequences to be missed; set <odds> to 0 to do full-length check; default: 20"
    cut_off: "cutoff for spacings to be considered significant; default: 0.05"
    evalue: "minimum E-value for printing secondary motifs; default: 10"
    overlap: "number of bases that the most significant spacing must overlap before further redundancy testing is done; default: 2"
    joint: "fraction of sites making up the most significant spacing that must be in both sets for the less significant motif to be considered redundant; default: 0.5"
    pseudo: "pseudocount added to loaded motifs; default: 0.1"
    bg_file: "file containing background frequency information used to apply pseudocounts to motifs and create the scoring matrices; default: calculate from sequences"
    x_alph: "Convert the alphabet of the secondary motif databases to the alphabet of the primary motif assuming the core symbols of the secondary motif alphabet are a subset; default: reject differences"
    trim: "trim the edges of motifs based on the information content; positions on the edges with information content less than bits will not be used in scanning default: 0.25"
    num_gen: "specify the random seed for initializing the pseudo- random number generator used in breaking ties; the seed is included in the output so experiments can be repeated; special value 'time' seeds to the system clock; default: 1"
    primary: "name of motif to select as the primary motif; overrides -primaryi"
    primary_i: "index of motif to select as the primary motif counting from 1; default: 1"
    keep_primary: "by default all occurrences of the primary other than the chosen one are erased to reduce the number of motifs whose apparent enrichment is due to multiple occurrences of the primary motif. If the same file is specified for the primary and secondary motifs, then this option will override erasing and primary-primary spacings will be analyzed."
    inc: "name pattern to select as secondary motif; may be repeated; default: all motifs are used"
    exc: "name pattern to exclude as secondary motif; may be repeated; default: all motifs are used"
    text: "output text file only (no HTML or XML)"
    eps: "output histograms in eps format; usable with -png"
    png: "output histograms in png format; usable with -eps"
    dumps_eqs: "dump matching trimmed sequences to output files; matches are initially in sequence name order; see documentation for column descriptions"
    dump_sigs: "same as above except only secondary matches in in significant bins are dumped matches are initially in sequence name order; see documentation for column descriptions"
    verbosity: "set the verbosity of the output: 1 (quiet) - 5 (dump); default: 2 (normal)"
    version: "print the version and exit"
    sequences: ""
    primary_motif: ""
    secondary_motifs: ""
  }
}