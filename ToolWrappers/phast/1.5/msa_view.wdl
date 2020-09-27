version 1.0

task MsaView {
  input {
    File? out_format
    Int? start
    Int? end
    Int? seqs
    Boolean? exclude
    Int? ref_idx
    File? aggregate
    File? split_all
    File? in_format
    String? alphabet
    Boolean? soft_masked
    Boolean? unmask
    Boolean? pretty
    String? gap_strip
    Boolean? collapse_missing
    Int? mark_missing
    Boolean? missing_as_indels
    String? order
    Boolean? reverse_complement
    Boolean? randomize
    Boolean? fill_ns
    Boolean? summary_only
    Int? window_summary
    Int? tuple_size
    Boolean? unordered_ss
    File? refseq
    Boolean? keep_overlapping
    File? features
    File? cat_map
    Int? cats_cycle
    Int? do_cats
    Boolean? codons
    String? reverse_groups
    Boolean? four_d
    Int? clean_coding
    Int? clean_indels
    String alignments_dot
  }
  command <<<
    msa_view \
      ~{alignments_dot} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(aggregate) then ("--aggregate " +  '"' + aggregate + '"') else ""} \
      ~{if defined(split_all) then ("--split-all " +  '"' + split_all + '"') else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if (soft_masked) then "--soft-masked" else ""} \
      ~{if (unmask) then "--unmask" else ""} \
      ~{if (pretty) then "--pretty" else ""} \
      ~{if defined(gap_strip) then ("--gap-strip " +  '"' + gap_strip + '"') else ""} \
      ~{if (collapse_missing) then "--collapse-missing" else ""} \
      ~{if defined(mark_missing) then ("--mark-missing " +  '"' + mark_missing + '"') else ""} \
      ~{if (missing_as_indels) then "--missing-as-indels" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if (reverse_complement) then "--reverse-complement" else ""} \
      ~{if (randomize) then "--randomize" else ""} \
      ~{if (fill_ns) then "--fill-Ns" else ""} \
      ~{if (summary_only) then "--summary-only" else ""} \
      ~{if defined(window_summary) then ("--window-summary " +  '"' + window_summary + '"') else ""} \
      ~{if defined(tuple_size) then ("--tuple-size " +  '"' + tuple_size + '"') else ""} \
      ~{if (unordered_ss) then "--unordered-ss" else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if (keep_overlapping) then "--keep-overlapping" else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(cat_map) then ("--catmap " +  '"' + cat_map + '"') else ""} \
      ~{if defined(cats_cycle) then ("--cats-cycle " +  '"' + cats_cycle + '"') else ""} \
      ~{if defined(do_cats) then ("--do-cats " +  '"' + do_cats + '"') else ""} \
      ~{if (codons) then "--codons" else ""} \
      ~{if defined(reverse_groups) then ("--reverse-groups " +  '"' + reverse_groups + '"') else ""} \
      ~{if (four_d) then "--4d" else ""} \
      ~{if defined(clean_coding) then ("--clean-coding " +  '"' + clean_coding + '"') else ""} \
      ~{if defined(clean_indels) then ("--clean-indels " +  '"' + clean_indels + '"') else ""}
  >>>
  parameter_meta {
    out_format: "|FASTA|MPM|SS\\n(Default FASTA)  Output file format."
    start: "Starting column of sub-alignment (indexing starts with 1).\\nDefault is 1.  Note that coordinates use the frame of reference\\nof the entire alignment unless --refidx 1 is specified."
    end: "Ending column of sub-alignment.  Default is length of\\nalignment.  Note that coordinates use the frame of reference\\nof the entire alignment unless --refidx 1 is specified."
    seqs: "Comma-separated list of sequences to include (default)\\nexclude (if --exclude).  Indicate by sequence number or name\\n(numbering starts with 1 and is evaluated *after* --order is\\napplied)."
    exclude: "Exclude rather than include specified sequences."
    ref_idx: "Index of reference sequence for coordinates.  Use 0 to\\nindicate the coordinate system of the alignment as a whole\\n(this is the default)."
    aggregate: "(Not compatible with --start or --end) Create an aggregate\\nalignment from a set of alignment files, by concatenating\\nindividual alignments.  If used with --out-format SS and\\n--unordered-ss, the aggregate alignment will never be created\\nexplicitly (recommended for large data sets).  The argument\\n<name_list> must be a list of sequence names, including all\\nnames in all specified alignments (missing sequences will be\\nreplaced by rows of missing data).  The standard <msa_fname>\\nargument should be replaced with a list of (whitespace-\\nseparated) file names."
    split_all: "Split output alignment into separate fasta files by species.\\nFile naming convention is filename_root.species.fa. If used with\\n--gap-strip, gap characters will be stripped from all output files.\\nIn this case, '--gap-strip <s>' should NOT be used (ALL or ANY\\nshould both work fine)."
    in_format: "|FASTA|MPM|MAF|SS\\n(Default is to guess format from file contents).  Input file\\nformat.  FASTA is as usual.  PHYLIP is compatible with the formats\\nused in the PHYLIP and PAML packages.  MPM is the format used by the\\nMultiPipMaker aligner and some other of Webb Miller's older tools.\\nMAF (\\\"Multiple Alignment Format\\\") is used by MULTIZ/TBA and the\\nUCSC Genome Browser.  SS is a simple format describing the\\nsufficient statistics for phylogenetic inference (distinct columns\\nor tuple of columns and their counts).  Use --out-format SS with\\n--in-format MAF for best efficiency (explicit alignment is\\nnever created).  Also, use --unordered-ss if possible."
    alphabet: "Use the specified alphabet (default \\\"ACGT\\\").  In addition,\\n'-' characters are assumed to represent alignment gaps, and\\n'*' and 'N' characters are allowed for missing data.\\nAlphabetical letters not in the alphabet will be converted to\\n'N's upon input.  This option is ignored with SS input (alphabet\\nspecified within SS files.)"
    soft_masked: "Implies --alphabet 'ACGTNacgtn', useful for soft-masked sequences."
    unmask: "Remove soft-masking; convert to uppercase."
    pretty: "Pretty-print alignment (use '.' when character matches\\ncorresponding character in first sequence).  Ignored if\\n--out-format SS is selected."
    gap_strip: "|ANY|<s>\\nStrip columns containing all gaps, any gaps, or a gap in the\\nspecified sequence (<s>).  Indexing starts at one and refers\\nto the list *after* any sequences have been added or\\nsubtracted (via --seqs and --exclude or --order)."
    collapse_missing: "(For use with -o SS) Convert all missing-data characters and\\ngaps to \\\"*\\\" characters.  Can be used to make sufficient\\nstatistics more compact, which can improve the performance of\\nphyloFit (all missing data and gap characters are typically\\ntreated the same by phyloFit anyway)."
    mark_missing: "Convert all gaps of length greater than <maxlen> to \\\"*\\\"\\ncharacters.  If --refidx is specified (with a positive index),\\ngaps in the designated reference sequence will not be altered.\\nThis is a useful heuristic for distinguishing between\\nmicroindels and regions of missing data (e.g., due to\\nlarge-scale indels, incomplete assemblies, or highly\\ndiverged sequences)."
    missing_as_indels: "Convert all missing data characters (Ns and *s) to gap\\ncharacters, except for Ns in a reference sequence specified by\\n--refidx, which will be replaced by randomly selected\\nnucleotides.  (This allows the coordinate frame for the\\nreference sequence to be maintained; this option is only\\nrecommended if such Ns are rare.)  If --refidx is not\\nused, all Ns will be replaced by gaps.  You may want to use\\n--gap-strip ALL with this option."
    order: "Change order of rows in alignment to match sequence names\\nspecified in name_list.  If a name appears in name_list but\\nnot in the alignment, a row of gaps will be inserted.  This\\noption is applied to the alignment *before* --seqs,\\n--refidx, and --gap-strip are applied."
    reverse_complement: "Reverse complement output alignment."
    randomize: "Randomly permute the columns of the source alignment (done\\n*before* taking sub-alignment).  Requires an ordered\\nrepresentation of the alignment (careful using with\\n--in-format SS|MAF -- will create full alignment from\\nsufficient statistics)."
    fill_ns: "<s:b-e>\\nFill sequence no. <s> with Ns, from <b> to <e>. Applied before\\n--start, --end, --seqs, --gap-strip, but after --order.\\nCoordinate frame depends on --refidx.  Can be used\\nmultiple times."
    summary_only: "Report only summary statistics, rather than complete\\nalignment.  Statistics are for alignment that would otherwise\\nbe output (i.e., after other options have been applied)."
    window_summary: "Like -S, but output summary statistics for non-overlapping\\nwindows of the specified size."
    tuple_size: "(For use with --out-format SS).  Represent an alignment in\\nterms of tuples of columns of the designated size.  Useful\\nwith context-dependent phylogenetic models."
    unordered_ss: "(For use with --out-format SS).  Suppress the portion of the\\nsufficient statistics concerned with the order in which\\ncolumns appear.  Useful for analyses for which order is\\nunimportant."
    refseq: "Read the complete text of the reference sequence from\\n<fname> (FASTA format) and combine it with the contents of\\nthe MAF file to produce a complete, ordered representation of\\nthe alignment (unaligned regions will be represented by gaps).\\nBest used with --out-format SS.  The reference sequence of the\\nMAF file is assumed to be the one that appears first in each\\nblock."
    keep_overlapping: "Keep blocks in MAF that have overlapping coordinates in the\\nreference (1st) sequence (by default, only the first one is\\nkept).  Useful in extracting unordered stats from a jumbled\\ncollection of MAF blocks (e.g., output of Jim Kent's mafFrags\\nprogram).  Cannot be used with --refseq, --features, or\\n--cats-cycle."
    features: "(Requires --catmap) Read sequence annotations from the\\nspecified file (GFF) and label the columns of the alignment\\naccordingly.  Note: UCSC BED and genepred formats are now\\nrecognized as well."
    cat_map: "|<string>\\n(optionally use with --features) Mapping of feature types to\\ncategory numbers.  Can either give a filename or an \\\"inline\\\"\\ndescription of a simple category map, e.g., --catmap \\\"NCATS =\\n3 ; CDS 1-3\\\" or --catmap \\\"NCATS = 1 ; UTR 1\\\"."
    cats_cycle: "(alternative to --features and --catmap) Assign site categories in\\ncycles of the specified size, e.g., as 1,2,3,...,1,2,3 (for\\ncycle_size == 3).  Useful for in-frame coding sequence, or to\\npartition a data set into nonoverlapping tuples of columns\\n(use with --do-cats)."
    do_cats: "(For use with --features or --cats-cycle)  Obtain\\nsufficient statistics only for the specified categories\\n(comma-delimited list, by number)."
    codons: "Extract sufficient statistics for in-frame codons.  Implies\\n--tuple-size 3 --cats-cycle 3 --do-cats 3.  Not appropriate\\nfor use with --features/--catmap."
    reverse_groups: "(For use with --features) Group features by <tag> (e.g.,\\n\\\"transcript_id\\\" or \\\"exon_id\\\") and reverse complement\\nsegments of the alignment corresponding to groups on the\\nreverse strand.  Groups must be non-overlapping (see refeature\\n--unique).  Useful when extracting sufficient statistics for\\nstrand-specific site categories (e.g., codon positions)."
    four_d: "(For use with --features; assumes coding regions have feature\\ntype 'CDS')  Extract sufficient statistics for fourfold\\ndegenerate synonymous sites.  Implies --out-format SS\\n--unordered-stats --tuple-size 3 --reverse-groups transcript_id."
    clean_coding: "Clean an alignment of coding sequences with respect to a named\\nreference sequence.  Removes sites with gaps and blocks of\\ngapless sites smaller than 10 codons in length, ensures\\neverything is in-frame wrt reference sequence, prohibits\\nin-frame stop codons.  Reference sequence must begin with a\\nstart codon and end with a stop codon."
    clean_indels: "Clean an alignment with special attention to indels.  Sites\\nwith fewer than <nseqs> bases are removed; bases adjacent to\\nindels, and short gapless subsequences, are replaced with Ns.\\nIf used with --tuple-size, then <tup_size>-1 columns of Ns\\nwill be retained between columns not adjacent in the original\\nalignment.  Frame is not considered."
    alignments_dot: "Can extract a sub-alignment from an alignment (by row"
  }
  output {
    File out_stdout = stdout()
    File out_out_format = "${in_out_format}"
    File out_aggregate = "${in_aggregate}"
    File out_split_all = "${in_split_all}"
    File out_refseq = "${in_refseq}"
  }
}