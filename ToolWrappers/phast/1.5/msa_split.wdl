version 1.0

task MsaSplit {
  input {
    File? out_root
    Boolean? windows
    Boolean? by_category
    File? by_group
    Boolean? for_features
    Int? by_index
    Int? n_partitions
    Int? between_blocks
    File? features
    File? cat_map
    Int? ref_idx
    File? in_format
    File? refseq
    File? out_format
    Boolean? sub_features
    Boolean? reverse_compl
    String? gap_strip
    Int? seqs
    Boolean? exclude
    String? order
    Int? min_informative
    String? do_cats
    Int? tuple_size
    Boolean? unordered_ss
    File? summary
    Boolean? quiet
    String fname
  }
  command <<<
    msa_split \
      ~{fname} \
      ~{if defined(out_root) then ("--out-root " +  '"' + out_root + '"') else ""} \
      ~{if (windows) then "--windows" else ""} \
      ~{if (by_category) then "--by-category" else ""} \
      ~{if defined(by_group) then ("--by-group " +  '"' + by_group + '"') else ""} \
      ~{if (for_features) then "--for-features" else ""} \
      ~{if defined(by_index) then ("--by-index " +  '"' + by_index + '"') else ""} \
      ~{if defined(n_partitions) then ("--npartitions " +  '"' + n_partitions + '"') else ""} \
      ~{if defined(between_blocks) then ("--between-blocks " +  '"' + between_blocks + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(cat_map) then ("--catmap " +  '"' + cat_map + '"') else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if (sub_features) then "--sub-features" else ""} \
      ~{if (reverse_compl) then "--reverse-compl" else ""} \
      ~{if defined(gap_strip) then ("--gap-strip " +  '"' + gap_strip + '"') else ""} \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(min_informative) then ("--min-informative " +  '"' + min_informative + '"') else ""} \
      ~{if defined(do_cats) then ("--do-cats " +  '"' + do_cats + '"') else ""} \
      ~{if defined(tuple_size) then ("--tuple-size " +  '"' + tuple_size + '"') else ""} \
      ~{if (unordered_ss) then "--unordered-ss" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    out_root: "Filename root for output files (default \\\"msa_split\\\")."
    windows: "<win_size,win_overlap>\\nSplit the alignment into \\\"windows\\\" of size <win_size> bases,\\noverlapping by <win_overlap>."
    by_category: "(Requires --features) Split by category, as defined by\\nannotations file and (optionally) category map (see\\n--catmap)"
    by_group: "(Requires --features) Split by groups in annotation file,\\nas defined by specified tag.  Splits midway between every\\npair of consecutive groups.  Features will be sorted by group.\\nThere should be no overlapping features (see 'refeature\\n--unique')."
    for_features: "(Requires --features) Extract section of alignment\\ncorresponding to every feature.  There will be no output for\\nregions not covered by features."
    by_index: "List of explicit indices at which to split alignment\\n(comma-separated).  If the list of indices is \\\"10,20\\\",\\nthen sub-alignments will be output for sites 1-9, 10-19, and\\n20-<msa_len>.  Note that the indices are relative to the\\ninput alignment, and not necessarily in genomic coordinates."
    n_partitions: "Split alignment equally into specified number of partitions."
    between_blocks: "(Not for use with --by-category or --for-features) Try to\\npartition at sites between alignment blocks.  Assumes a\\nreference sequence alignment, with the first sequence as the\\nreference seq (as created by multiz).  Blocks of 30 sites with\\ngaps in all sequences but the reference seq are assumed to\\nindicate boundaries between alignment blocks.  Partition\\nindices will not be moved more than <radius> sites."
    features: "(For use with --by-category, --by-group, --for-features, or\\n--windows) Annotations file.  May be GFF, BED, or genepred\\nformat.  Coordinates are assumed to be in the coordinate frame of\\nthe first sequence in the alignment (assumed to be the reference\\nsequence)."
    cat_map: "|<string>\\n(Optionally use with --by-category) Mapping of feature types\\nto category numbers.  Can either give a filename or an\\n\\\"inline\\\" description of a simple category map, e.g.,\\n--catmap \\\"NCATS = 3 ; CDS 1-3\\\" or --catmap \\\"NCATS = 1 ; UTR\\n1\\\"."
    ref_idx: "(For use with --windows or --by-index) Index of frame of\\nreference for split indices.  Default is 1 (1st sequence\\nassumed reference)."
    in_format: "|PHYLIP|MPM|MAF|SS\\nInput alignment file format.  Default is to guess format from\\nfile contents."
    refseq: "(For use with --in-format MAF) Name of file containing\\nreference sequence, in FASTA format."
    out_format: "|PHYLIP|MPM|SS\\nOutput alignment file format.  Default is FASTA."
    sub_features: "(For use with --features)  Output subsets of features\\ncorresponding to subalignments.  Features overlapping\\npartition boundaries will be discarded.  Not permitted with\\n--by-category."
    reverse_compl: "Reverse complement all segments having at least one feature on\\nthe reverse strand and none on the positive strand.  For use\\nwith --by-group.  Can also be used with --by-category to ensure\\nall sites in a category are represented in the same strand\\norientation."
    gap_strip: "|ANY|<seqno>\\nStrip columns in output alignments containing all gaps, any\\ngaps, or gaps in the specified sequence (<seqno>; indexing\\nbegins with one).  Default is not to strip any columns."
    seqs: "Include only specified sequences in output.  Indicate by\\nsequence number or name (numbering starts with 1 and is\\nevaluated *after* --order is applied)."
    exclude: "Exclude rather than include specified sequences."
    order: "Change order of rows in alignment to match sequence names\\nspecified in name_list.  If a name appears in name_list but\\nnot in the alignment, a row of gaps will be inserted."
    min_informative: "Only output alignments having at least <n> informative sites\\n(sites at which at least two non-gap and non-N gaps are present)."
    do_cats: "(For use with --by-category) Output sub-alignments for only the\\nspecified categories (column-delimited list)."
    tuple_size: "(for use with --by-category or --out-format SS) Size of tuples\\nof columns to consider in downstream analysis (e.g., with\\ncontext-dependent phylogenetic models; see 'phyloFit').  With\\n--by-category, insert tuple_size-1 columns of missing data\\nbetween sites that were not adjacent in the original alignment,\\nto avoid creating artificial context.  With --out-format SS,\\nexpress sufficient statistics in terms of tuples of specified size."
    unordered_ss: "(For use with --out-format SS)  Suppress the portion of the\\nsufficient statistics concerned with the order in which columns\\nappear."
    summary: "Output summary of each output alignment to a file with suffix\\n\\\".sum\\\" (includes base frequencies and numbers of gapped columns)."
    quiet: "Proceed quietly."
    fname: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_root = "${in_out_root}"
    File out_out_format = "${in_out_format}"
    File out_summary = "${in_summary}"
  }
}