version 1.0

task Pspgen {
  input {
    Int? min_w
    Int? max_w
    Boolean? dna
    Boolean? protein
    Boolean? rna
    File? alph
    Boolean? triples
    Boolean? fixed_start
    String? equiv
    Boolean? rev_comp
    Int? scale_min
    Int? scale_max
    Boolean? max_range
    Boolean? raw
    Boolean? report_scores
    Boolean? verbose
    File? pos
    File? neg
    String score
    String copyright
  }
  command <<<
    psp_gen \
      ~{score} \
      ~{copyright} \
      ~{if defined(min_w) then ("-minw " +  '"' + min_w + '"') else ""} \
      ~{if defined(max_w) then ("-maxw " +  '"' + max_w + '"') else ""} \
      ~{if (dna) then "-dna" else ""} \
      ~{if (protein) then "-protein" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if (triples) then "-triples" else ""} \
      ~{if (fixed_start) then "-fixedstart" else ""} \
      ~{if defined(equiv) then ("-equiv " +  '"' + equiv + '"') else ""} \
      ~{if (rev_comp) then "-revcomp" else ""} \
      ~{if defined(scale_min) then ("-scalemin " +  '"' + scale_min + '"') else ""} \
      ~{if defined(scale_max) then ("-scalemax " +  '"' + scale_max + '"') else ""} \
      ~{if (max_range) then "-maxrange" else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (report_scores) then "-reportscores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(pos) then ("-pos " +  '"' + pos + '"') else ""} \
      ~{if defined(neg) then ("-neg " +  '"' + neg + '"') else ""}
  >>>
  parameter_meta {
    min_w: "minimum width of motif to consider\\ndefault: 4"
    max_w: "maximum width of motif to consider\\ndefault: 20"
    dna: "use DNA alphabet; this is the default"
    protein: "use protein alphabet"
    rna: "use RNA alphabet"
    alph: "use the alphabet defined in the file"
    triples: "use spaced triples for matches\\ndefault: do exact matches of w-mers"
    fixed_start: "for triples, anchor the start when scoring\\ntriples of width < w\\ndefault: allow start to move"
    equiv: "specifiy sets of symbols that should be considered\\nequalivent; sets should be separated with a '-',\\nunless the alphabet contains a dash in which case\\nthe option may be specified multiple times;\\neg. for protein -equiv \\\"IVL-HKR\\\" means treat all\\noccurrences of I, V or L (or any of their aliases\\nin the alphabet) as the same and all occurrences of\\nH, K, R as the same"
    rev_comp: "count reverse complements in computing scores\\ndefault: only count forward matches"
    scale_min: "scale scores to mimumum <number>\\ndefault: 0.1 or 1-scalemax if set"
    scale_max: "scale scores to maximum of <number>\\ndefault: 0.9 or 1-scalemin if set"
    max_range: "instead of choosing W with maximum score choose W with\\nmaximum difference between maximum and minimum scores"
    raw: "output scores instead of priors"
    report_scores: "report pos and neg file names, min and max scores,\\nmin and max w : tab-separated to STDERR"
    verbose: "send stats to stderr reporting frequency of each"
    pos: "sequences likely to contain binding sites"
    neg: "sequences unlikely to contain binding sites"
    score: "default: do not report statistics"
    copyright: "(2009) The University of Queensland"
  }
  output {
    File out_stdout = stdout()
  }
}