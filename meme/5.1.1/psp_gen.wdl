version 1.0

task PspGen {
  input {
    String? min_w
    String? max_w
    Boolean? dna
    Boolean? protein
    Boolean? rna
    File? alph
    Boolean? triples
    Boolean? fixed_start
    String? equiv
    Boolean? rev_comp
    String? scale_min
    String? scale_max
    Boolean? max_range
    Boolean? raw
    Boolean? report_scores
    Boolean? verbose
    File? pos
    File? neg
    String usage
  }
  command <<<
    psp-gen \
      ~{usage} \
      ~{if defined(min_w) then ("-minw " +  '"' + min_w + '"') else ""} \
      ~{if defined(max_w) then ("-maxw " +  '"' + max_w + '"') else ""} \
      ~{true="-dna" false="" dna} \
      ~{true="-protein" false="" protein} \
      ~{true="-rna" false="" rna} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{true="-triples" false="" triples} \
      ~{true="-fixedstart" false="" fixed_start} \
      ~{if defined(equiv) then ("-equiv " +  '"' + equiv + '"') else ""} \
      ~{true="-revcomp" false="" rev_comp} \
      ~{if defined(scale_min) then ("-scalemin " +  '"' + scale_min + '"') else ""} \
      ~{if defined(scale_max) then ("-scalemax " +  '"' + scale_max + '"') else ""} \
      ~{true="-maxrange" false="" max_range} \
      ~{true="-raw" false="" raw} \
      ~{true="-reportscores" false="" report_scores} \
      ~{true="-verbose" false="" verbose} \
      ~{if defined(pos) then ("-pos " +  '"' + pos + '"') else ""} \
      ~{if defined(neg) then ("-neg " +  '"' + neg + '"') else ""}
  >>>
  parameter_meta {
    min_w: "minimum width of motif to consider default: 4"
    max_w: "maximum width of motif to consider default: 20"
    dna: "use DNA alphabet; this is the default"
    protein: "use protein alphabet"
    rna: "use RNA alphabet"
    alph: "use the alphabet defined in the file"
    triples: "use spaced triples for matches default: do exact matches of w-mers"
    fixed_start: "for triples, anchor the start when scoring triples of width < w default: allow start to move"
    equiv: "specifiy sets of symbols that should be considered equalivent; sets should be separated with a '-', unless the alphabet contains a dash in which case the option may be specified multiple times; eg. for protein -equiv \"IVL-HKR\" means treat all occurrences of I, V or L (or any of their aliases in the alphabet) as the same and all occurrences of H, K, R as the same"
    rev_comp: "count reverse complements in computing scores default: only count forward matches"
    scale_min: "scale scores to mimumum <number> default: 0.1 or 1-scalemax if set"
    scale_max: "scale scores to maximum of <number> default: 0.9 or 1-scalemin if set"
    max_range: "instead of choosing W with maximum score choose W with maximum difference between maximum and minimum scores"
    raw: "output scores instead of priors"
    report_scores: "report pos and neg file names, min and max scores, min and max w : tab-separated to STDERR"
    verbose: "send stats to stderr reporting frequency of each score default: do not report statistics"
    pos: "sequences likely to contain binding sites"
    neg: "sequences unlikely to contain binding sites"
    usage: ""
  }
}