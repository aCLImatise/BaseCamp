version 1.0

task MafParse {
  input {
    File? out_format
    Boolean? pretty
    Int? start
    Int? end
    Int? seqs
    Boolean? exclude
    String? order
    Boolean? no_refseq
    Int? split
    File? out_root
    Int? out_root_digits
    File? features
    Boolean? by_category
    String? do_cats
    File? cat_map
    File? by_group
    Int? mask_bases
    File? masked_file
    String? mask_features
    Boolean? strip_i_lines
    Boolean? strip_e_lines
    String in_file
  }
  command <<<
    maf_parse \
      ~{in_file} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if (pretty) then "--pretty" else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if (no_refseq) then "--no-refseq" else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(out_root) then ("--out-root " +  '"' + out_root + '"') else ""} \
      ~{if defined(out_root_digits) then ("--out-root-digits " +  '"' + out_root_digits + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if (by_category) then "--by-category" else ""} \
      ~{if defined(do_cats) then ("--do-cats " +  '"' + do_cats + '"') else ""} \
      ~{if defined(cat_map) then ("--catmap " +  '"' + cat_map + '"') else ""} \
      ~{if defined(by_group) then ("--by-group " +  '"' + by_group + '"') else ""} \
      ~{if defined(mask_bases) then ("--mask-bases " +  '"' + mask_bases + '"') else ""} \
      ~{if defined(masked_file) then ("--masked-file " +  '"' + masked_file + '"') else ""} \
      ~{if defined(mask_features) then ("--mask-features " +  '"' + mask_features + '"') else ""} \
      ~{if (strip_i_lines) then "--strip-i-lines" else ""} \
      ~{if (strip_e_lines) then "--strip-e-lines" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_format: "|PHYLIP|FASTA|MPM|SS\\n(Default MAF).  Output file format.  SS format is only\\navailable un-ordered.  Note that some options, which involve\\nreversing alignments based on strand, or stripping gaps,\\ncannot be output in MAF format and use FASTA by default.\\nAlso note that when output format is not MAF, the entire\\noutput must be loaded into memory."
    pretty: "Pretty-print alignment (use '.' when character matches\\ncorresponding character in first sequence).  Ignored if\\n--out-format SS is selected."
    start: "Start index of sub-alignment (indexing starts with 1).\\nCoordinates are in terms of the reference sequence unless\\nthe --no-refseq option is used, in which case they are in\\nterms of alignment columns.  Default is 1."
    end: "End index of sub-alignment.  Default is length of alignment.\\nCoordinates defined as in --start option, above."
    seqs: "Comma-separated list of sequences to include (default)\\nexclude (if --exclude).  Indicate by sequence number or name\\n(numbering starts with 1 and is evaluated *after* --order is\\napplied)."
    exclude: "Exclude rather than include specified sequences."
    order: "Change order of rows in alignment to match sequence names\\nspecified in name_list.  The first name in the alignment becomes\\nthe reference sequence."
    no_refseq: "Do not assume first sequence in MAF is refseq.  Instead, use\\ncoordinates  given by absolute position in alignment (starting\\nfrom 1)."
    split: "Split MAF into pieces by length, and puts output in\\noutRootX.maf, where X=1,2,...,numPieces.  outRoot can be\\nmodified with --out-root, and the minimum number of digits in X\\ncan be modified with --out-root-digits.\\nSplits between blocks, so that each output file does not exceed\\nspecified length.  By default, length is counted by distance\\nspanned in alignment by refseq, unless --no-refseq is specified."
    out_root: "Filename root for output files produced by --split (default\\n\\\"maf_parse\\\")."
    out_root_digits: "(for use with --split).  The minimum number of digits used to\\nindex each output file produced by split."
    features: "Annotations file.  May be GFF, BED, or genepred format.\\nCoordinates assumed to be in frame of first sequence of\\nalignment (reference sequence).  By default, outputs subset of\\nMAF which are labeled in annotations file.  But can be used with\\n--by-category, --by-group, and/or --do-cats to split MAF by\\nannotation type.  Or if used with --mask-features, is only used\\nto determine regions to mask.  Implies --strip-i-lines,\\n--strip-e-lines"
    by_category: "(Requires --features).  Split by category, as defined by\\nannotations file and (optionally) category map (see --catmap)."
    do_cats: "(For use with --by-category) Output sub-alignments for only the\\nspecified categories."
    cat_map: "|<string>\\n(Optionally use with --by-category) Mapping of feature types to\\ncategory numbers.  Can either give a filename or an \\\"inline\\\"\\ndescription of a simple category map, e.g.,\\n--catmap \\\"NCATS = 3 ; CDS 1-3\\\" or\\n--catmap \\\"NCATS = 1; UTR 1\\\"."
    by_group: "(Requires --features).  Split by groups in annotation file, as\\ndefined by specified tag."
    mask_bases: "Mask all bases with quality score <= n.  Note that n is in the\\nsame units as displayed in the MAF (ranging from 0-9), and\\nrepresents min(9, floor(PHRED_score/5)).  Bases without any\\nquality score will not be masked."
    masked_file: "(For use with --mask-bases).  Write a file containing all the\\nregions masked for low quality.  The file will be in 0-based\\ncoordinates relative to the refseq, with an additional column\\ngiving the name of the species masked.  Note that low-quality bases\\nmasked at alignment columns with a gap in the reference sequence\\nmay not be represented in the output file."
    mask_features: "(Requires --features).  Mask all bases annotated in features in the\\ngiven species (can be a comma-delimited list of species).  Note that\\ncoordinates are always in terms of refseq, even if a different species\\nis being masked."
    strip_i_lines: "Remove lines in MAF starting with i."
    strip_e_lines: "Remove lines in MAF starting with e."
    in_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_format = "${in_out_format}"
    File out_out_root = "${in_out_root}"
    File out_masked_file = "${in_masked_file}"
  }
}