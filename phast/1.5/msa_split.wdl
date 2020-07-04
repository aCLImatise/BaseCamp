version 1.0

task MsaSplit {
  input {
    String? ref_idx
    String? seqs
    Boolean? exclude
    String? order
    String? min_informative
    String? do_cats
    String? tuple_size
    Boolean? unordered_ss
    Boolean? summary
    Boolean? quiet
    String fname
  }
  command <<<
    msa_split \
      ~{fname} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{true="--exclude" false="" exclude} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(min_informative) then ("--min-informative " +  '"' + min_informative + '"') else ""} \
      ~{if defined(do_cats) then ("--do-cats " +  '"' + do_cats + '"') else ""} \
      ~{if defined(tuple_size) then ("--tuple-size " +  '"' + tuple_size + '"') else ""} \
      ~{true="--unordered-ss" false="" unordered_ss} \
      ~{true="--summary" false="" summary} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    ref_idx: "(For use with --windows or --by-index) Index of frame of reference for split indices.  Default is 1 (1st sequence assumed reference)."
    seqs: "Include only specified sequences in output.  Indicate by  sequence number or name (numbering starts with 1 and is evaluated *after* --order is applied)."
    exclude: "Exclude rather than include specified sequences."
    order: "Change order of rows in alignment to match sequence names specified in name_list.  If a name appears in name_list but not in the alignment, a row of gaps will be inserted."
    min_informative: "Only output alignments having at least <n> informative sites (sites at which at least two non-gap and non-N gaps are present)."
    do_cats: "(For use with --by-category) Output sub-alignments for only the specified categories (column-delimited list)."
    tuple_size: "(for use with --by-category or --out-format SS) Size of tuples of columns to consider in downstream analysis (e.g., with context-dependent phylogenetic models; see 'phyloFit').  With --by-category, insert tuple_size-1 columns of missing data between sites that were not adjacent in the original alignment, to avoid creating artificial context.  With --out-format SS, express sufficient statistics in terms of tuples of specified size."
    unordered_ss: "(For use with --out-format SS)  Suppress the portion of the sufficient statistics concerned with the order in which columns appear."
    summary: "Output summary of each output alignment to a file with suffix \".sum\" (includes base frequencies and numbers of gapped columns)."
    quiet: "Proceed quietly."
    fname: ""
  }
}