version 1.0

task MsaView {
  input {
    String? out_format
    String? tuple_size
    Boolean? cat_map
    String? start
    String? end
    String? seqs
    Boolean? exclude
    String? ref_idx
    String? aggregate
    File? split_all
    Boolean? summary_only
    String? window_summary
    Boolean? unordered_ss
    String? refseq
    Boolean? keep_overlapping
    String? cats_cycle
    String? do_cats
    Boolean? codons
    String? reverse_groups
    Boolean? four_d
    String? clean_coding
    String? clean_indels
    String in_file
  }
  command <<<
    msa_view \
      ~{in_file} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if defined(tuple_size) then ("--tuple-size " +  '"' + tuple_size + '"') else ""} \
      ~{true="--catmap" false="" cat_map} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(seqs) then ("--seqs " +  '"' + seqs + '"') else ""} \
      ~{true="--exclude" false="" exclude} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(aggregate) then ("--aggregate " +  '"' + aggregate + '"') else ""} \
      ~{if defined(split_all) then ("--split-all " +  '"' + split_all + '"') else ""} \
      ~{true="--summary-only" false="" summary_only} \
      ~{if defined(window_summary) then ("--window-summary " +  '"' + window_summary + '"') else ""} \
      ~{true="--unordered-ss" false="" unordered_ss} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{true="--keep-overlapping" false="" keep_overlapping} \
      ~{if defined(cats_cycle) then ("--cats-cycle " +  '"' + cats_cycle + '"') else ""} \
      ~{if defined(do_cats) then ("--do-cats " +  '"' + do_cats + '"') else ""} \
      ~{true="--codons" false="" codons} \
      ~{if defined(reverse_groups) then ("--reverse-groups " +  '"' + reverse_groups + '"') else ""} \
      ~{true="--4d" false="" four_d} \
      ~{if defined(clean_coding) then ("--clean-coding " +  '"' + clean_coding + '"') else ""} \
      ~{if defined(clean_indels) then ("--clean-indels " +  '"' + clean_indels + '"') else ""}
  >>>
  parameter_meta {
    out_format: "> chr1.ordered.ss"
    tuple_size: "(For use with --out-format SS).  Represent an alignment in terms of tuples of columns of the designated size.  Useful with context-dependent phylogenetic models."
    cat_map: "\"NCATS = 3; CDS 1-3\" --reverse-groups transcript_id"
    start: "Starting column of sub-alignment (indexing starts with 1). Default is 1.  Note that coordinates use the frame of reference of the entire alignment unless --refidx 1 is specified."
    end: "Ending column of sub-alignment.  Default is length of alignment.  Note that coordinates use the frame of reference of the entire alignment unless --refidx 1 is specified."
    seqs: "Comma-separated list of sequences to include (default) exclude (if --exclude).  Indicate by sequence number or name (numbering starts with 1 and is evaluated *after* --order is applied)."
    exclude: "Exclude rather than include specified sequences."
    ref_idx: "Index of reference sequence for coordinates.  Use 0 to indicate the coordinate system of the alignment as a whole (this is the default)."
    aggregate: "(Not compatible with --start or --end) Create an aggregate alignment from a set of alignment files, by concatenating individual alignments.  If used with --out-format SS and --unordered-ss, the aggregate alignment will never be created explicitly (recommended for large data sets).  The argument <name_list> must be a list of sequence names, including all names in all specified alignments (missing sequences will be replaced by rows of missing data).  The standard <msa_fname> argument should be replaced with a list of (whitespace- separated) file names."
    split_all: "Split output alignment into separate fasta files by species. File naming convention is filename_root.species.fa. If used with --gap-strip, gap characters will be stripped from all output files. In this case, '--gap-strip <s>' should NOT be used (ALL or ANY should both work fine)."
    summary_only: "Report only summary statistics, rather than complete alignment.  Statistics are for alignment that would otherwise be output (i.e., after other options have been applied)."
    window_summary: "Like -S, but output summary statistics for non-overlapping windows of the specified size."
    unordered_ss: "(For use with --out-format SS).  Suppress the portion of the sufficient statistics concerned with the order in which columns appear.  Useful for analyses for which order is unimportant."
    refseq: "Read the complete text of the reference sequence from <fname> (FASTA format) and combine it with the contents of the MAF file to produce a complete, ordered representation of the alignment (unaligned regions will be represented by gaps). Best used with --out-format SS.  The reference sequence of the MAF file is assumed to be the one that appears first in each block."
    keep_overlapping: "Keep blocks in MAF that have overlapping coordinates in the reference (1st) sequence (by default, only the first one is kept).  Useful in extracting unordered stats from a jumbled collection of MAF blocks (e.g., output of Jim Kent's mafFrags program).  Cannot be used with --refseq, --features, or --cats-cycle."
    cats_cycle: "(alternative to --features and --catmap) Assign site categories in cycles of the specified size, e.g., as 1,2,3,...,1,2,3 (for cycle_size == 3).  Useful for in-frame coding sequence, or to partition a data set into nonoverlapping tuples of columns (use with --do-cats)."
    do_cats: "(For use with --features or --cats-cycle)  Obtain sufficient statistics only for the specified categories (comma-delimited list, by number)."
    codons: "Extract sufficient statistics for in-frame codons.  Implies --tuple-size 3 --cats-cycle 3 --do-cats 3.  Not appropriate for use with --features/--catmap."
    reverse_groups: "(For use with --features) Group features by <tag> (e.g., \"transcript_id\" or \"exon_id\") and reverse complement segments of the alignment corresponding to groups on the reverse strand.  Groups must be non-overlapping (see refeature --unique).  Useful when extracting sufficient statistics for strand-specific site categories (e.g., codon positions)."
    four_d: "(For use with --features; assumes coding regions have feature type 'CDS')  Extract sufficient statistics for fourfold degenerate synonymous sites.  Implies --out-format SS --unordered-stats --tuple-size 3 --reverse-groups transcript_id."
    clean_coding: "Clean an alignment of coding sequences with respect to a named reference sequence.  Removes sites with gaps and blocks of gapless sites smaller than 10 codons in length, ensures everything is in-frame wrt reference sequence, prohibits in-frame stop codons.  Reference sequence must begin with a start codon and end with a stop codon."
    clean_indels: "Clean an alignment with special attention to indels.  Sites with fewer than <nseqs> bases are removed; bases adjacent to indels, and short gapless subsequences, are replaced with Ns. If used with --tuple-size, then <tup_size>-1 columns of Ns will be retained between columns not adjacent in the original alignment.  Frame is not considered."
    in_file: ""
  }
}