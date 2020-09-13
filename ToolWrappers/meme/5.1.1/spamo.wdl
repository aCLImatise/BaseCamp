version 1.0

task Spamo {
  input {
    Directory? create_directory_write
    Directory? oc
    Int? min_score
    Int? margin
    Int? bin
    Int? range
    Boolean? use_best_sec
    Float? shared
    Int? odds
    Float? cut_off
    Int? evalue
    Int? overlap
    Float? joint
    Float? pseudo
    File? bg_file
    Boolean? x_alph
    Float? trim
    Int? num_gen
    String? primary
    Int? primary_i
    Boolean? keep_primary
    String? inc
    String? exc
    File? text
    Boolean? eps
    Boolean? png
    Boolean? dumps_eqs
    Boolean? dump_sigs
    Int? verbosity
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
      ~{if (use_best_sec) then "-usebestsec" else ""} \
      ~{if defined(shared) then ("-shared " +  '"' + shared + '"') else ""} \
      ~{if defined(odds) then ("-odds " +  '"' + odds + '"') else ""} \
      ~{if defined(cut_off) then ("-cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(evalue) then ("-evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(overlap) then ("-overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(joint) then ("-joint " +  '"' + joint + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if defined(bg_file) then ("-bgfile " +  '"' + bg_file + '"') else ""} \
      ~{if (x_alph) then "-xalph" else ""} \
      ~{if defined(trim) then ("-trim " +  '"' + trim + '"') else ""} \
      ~{if defined(num_gen) then ("-numgen " +  '"' + num_gen + '"') else ""} \
      ~{if defined(primary) then ("-primary " +  '"' + primary + '"') else ""} \
      ~{if defined(primary_i) then ("-primaryi " +  '"' + primary_i + '"') else ""} \
      ~{if (keep_primary) then "-keepprimary" else ""} \
      ~{if defined(inc) then ("-inc " +  '"' + inc + '"') else ""} \
      ~{if defined(exc) then ("-exc " +  '"' + exc + '"') else ""} \
      ~{if (text) then "-text" else ""} \
      ~{if (eps) then "-eps" else ""} \
      ~{if (png) then "-png" else ""} \
      ~{if (dumps_eqs) then "-dumpseqs" else ""} \
      ~{if (dump_sigs) then "-dumpsigs" else ""} \
      ~{if defined(verbosity) then ("-verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    create_directory_write: "create the directory and write output files in it;\\nnot compatible with -oc"
    oc: "create the directory but if it already exists allow\\noverwriting the contents; default: spamo_out"
    min_score: "the minimum score (bits) to accept as a motif match;\\ndefault: 7\\nNote: if <valu> is in the range [-1, 0), then the\\nminimum score is set to: -<valu>*pwm_maximum_score"
    margin: "edge margin excluded for primary motif matches and\\nthe maximum distance from the primary motif to the\\nsecondary motif; default: 150"
    bin: "size of bins used for output; default: 1"
    range: "the range from the primary to include in significance\\ntests; default: 150"
    use_best_sec: "use only the best match of the secondary motif;\\ndefault: count all secondary matches above the\\nscore match threshold in the margins around the\\nprimary motif match"
    shared: "fraction of shared trimmed sequence content that\\nis required to exclude the sequence as redundant;\\nset <fract> to 0 to skip sequence redundancy check;\\ndefault: 0.5"
    odds: "odds ratio used for speedup of the redundant\\nsequence check; low values may cause some\\nredundant sequences to be missed; set <odds>\\nto 0 to do full-length check;\\ndefault: 20"
    cut_off: "cutoff for spacings to be considered significant;\\ndefault: 0.05"
    evalue: "minimum E-value for printing secondary motifs;\\ndefault: 10"
    overlap: "number of bases that the most significant spacing\\nmust overlap before further redundancy testing is\\ndone; default: 2"
    joint: "fraction of sites making up the most significant\\nspacing that must be in both sets for the less\\nsignificant motif to be considered redundant;\\ndefault: 0.5"
    pseudo: "pseudocount added to loaded motifs;\\ndefault: 0.1"
    bg_file: "file containing background frequency information\\nused to apply pseudocounts to motifs and create the\\nscoring matrices; default: calculate from sequences"
    x_alph: "Convert the alphabet of the secondary motif databases\\nto the alphabet of the primary motif\\nassuming the core symbols of the secondary motif\\nalphabet are a subset; default: reject differences"
    trim: "trim the edges of motifs based on the information\\ncontent; positions on the edges with information\\ncontent less than bits will not be used in\\nscanning\\ndefault: 0.25"
    num_gen: "specify the random seed for initializing the pseudo-\\nrandom number generator used in breaking ties;\\nthe seed is included in the output so experiments\\ncan be repeated; special value 'time' seeds to the\\nsystem clock; default: 1"
    primary: "name of motif to select as the primary motif;\\noverrides -primaryi"
    primary_i: "index of motif to select as the primary motif\\ncounting from 1; default: 1"
    keep_primary: "by default all occurrences of the primary other\\nthan the chosen one are erased to reduce the\\nnumber of motifs whose apparent enrichment is due\\nto multiple occurrences of the primary motif. If\\nthe same file is specified for the primary and\\nsecondary motifs, then this option will override\\nerasing and primary-primary spacings will be\\nanalyzed."
    inc: "name pattern to select as secondary motif; may be\\nrepeated; default: all motifs are used"
    exc: "name pattern to exclude as secondary motif; may be\\nrepeated; default: all motifs are used"
    text: "output text file only (no HTML or XML)"
    eps: "output histograms in eps format; usable with -png"
    png: "output histograms in png format; usable with -eps"
    dumps_eqs: "dump matching trimmed sequences to output files;\\nmatches are initially in sequence name order;\\nsee documentation for column descriptions"
    dump_sigs: "same as above except only secondary matches in\\nin significant bins are dumped\\nmatches are initially in sequence name order;\\nsee documentation for column descriptions"
    verbosity: "set the verbosity of the output: 1 (quiet) - 5 (dump);\\ndefault: 2 (normal)"
    version: "print the version and exit"
    sequences: ""
    primary_motif: ""
    secondary_motifs: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_create_directory_write = "${in_create_directory_write}"
    File out_text = "${in_text}"
  }
}