class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msa_view.cwl
inputs:
- id: out_format
  doc: '> chr1.ordered.ss'
  type: string
  inputBinding:
    prefix: --out-format
- id: tuple_size
  doc: (For use with --out-format SS).  Represent an alignment in terms of tuples
    of columns of the designated size.  Useful with context-dependent phylogenetic
    models.
  type: string
  inputBinding:
    prefix: --tuple-size
- id: cat_map
  doc: '"NCATS = 3; CDS 1-3" --reverse-groups transcript_id'
  type: boolean
  inputBinding:
    prefix: --catmap
- id: start
  doc: Starting column of sub-alignment (indexing starts with 1). Default is 1.  Note
    that coordinates use the frame of reference of the entire alignment unless --refidx
    1 is specified.
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: Ending column of sub-alignment.  Default is length of alignment.  Note that
    coordinates use the frame of reference of the entire alignment unless --refidx
    1 is specified.
  type: string
  inputBinding:
    prefix: --end
- id: seqs
  doc: Comma-separated list of sequences to include (default) exclude (if --exclude).  Indicate
    by sequence number or name (numbering starts with 1 and is evaluated *after* --order
    is applied).
  type: string
  inputBinding:
    prefix: --seqs
- id: exclude
  doc: Exclude rather than include specified sequences.
  type: boolean
  inputBinding:
    prefix: --exclude
- id: ref_idx
  doc: Index of reference sequence for coordinates.  Use 0 to indicate the coordinate
    system of the alignment as a whole (this is the default).
  type: string
  inputBinding:
    prefix: --refidx
- id: aggregate
  doc: (Not compatible with --start or --end) Create an aggregate alignment from a
    set of alignment files, by concatenating individual alignments.  If used with
    --out-format SS and --unordered-ss, the aggregate alignment will never be created
    explicitly (recommended for large data sets).  The argument <name_list> must be
    a list of sequence names, including all names in all specified alignments (missing
    sequences will be replaced by rows of missing data).  The standard <msa_fname>
    argument should be replaced with a list of (whitespace- separated) file names.
  type: string
  inputBinding:
    prefix: --aggregate
- id: split_all
  doc: Split output alignment into separate fasta files by species. File naming convention
    is filename_root.species.fa. If used with --gap-strip, gap characters will be
    stripped from all output files. In this case, '--gap-strip <s>' should NOT be
    used (ALL or ANY should both work fine).
  type: File
  inputBinding:
    prefix: --split-all
- id: summary_only
  doc: Report only summary statistics, rather than complete alignment.  Statistics
    are for alignment that would otherwise be output (i.e., after other options have
    been applied).
  type: boolean
  inputBinding:
    prefix: --summary-only
- id: window_summary
  doc: Like -S, but output summary statistics for non-overlapping windows of the specified
    size.
  type: string
  inputBinding:
    prefix: --window-summary
- id: unordered_ss
  doc: (For use with --out-format SS).  Suppress the portion of the sufficient statistics
    concerned with the order in which columns appear.  Useful for analyses for which
    order is unimportant.
  type: boolean
  inputBinding:
    prefix: --unordered-ss
- id: refseq
  doc: Read the complete text of the reference sequence from <fname> (FASTA format)
    and combine it with the contents of the MAF file to produce a complete, ordered
    representation of the alignment (unaligned regions will be represented by gaps).
    Best used with --out-format SS.  The reference sequence of the MAF file is assumed
    to be the one that appears first in each block.
  type: string
  inputBinding:
    prefix: --refseq
- id: keep_overlapping
  doc: Keep blocks in MAF that have overlapping coordinates in the reference (1st)
    sequence (by default, only the first one is kept).  Useful in extracting unordered
    stats from a jumbled collection of MAF blocks (e.g., output of Jim Kent's mafFrags
    program).  Cannot be used with --refseq, --features, or --cats-cycle.
  type: boolean
  inputBinding:
    prefix: --keep-overlapping
- id: cats_cycle
  doc: (alternative to --features and --catmap) Assign site categories in cycles of
    the specified size, e.g., as 1,2,3,...,1,2,3 (for cycle_size == 3).  Useful for
    in-frame coding sequence, or to partition a data set into nonoverlapping tuples
    of columns (use with --do-cats).
  type: string
  inputBinding:
    prefix: --cats-cycle
- id: do_cats
  doc: (For use with --features or --cats-cycle)  Obtain sufficient statistics only
    for the specified categories (comma-delimited list, by number).
  type: string
  inputBinding:
    prefix: --do-cats
- id: codons
  doc: Extract sufficient statistics for in-frame codons.  Implies --tuple-size 3
    --cats-cycle 3 --do-cats 3.  Not appropriate for use with --features/--catmap.
  type: boolean
  inputBinding:
    prefix: --codons
- id: reverse_groups
  doc: (For use with --features) Group features by <tag> (e.g., "transcript_id" or
    "exon_id") and reverse complement segments of the alignment corresponding to groups
    on the reverse strand.  Groups must be non-overlapping (see refeature --unique).  Useful
    when extracting sufficient statistics for strand-specific site categories (e.g.,
    codon positions).
  type: string
  inputBinding:
    prefix: --reverse-groups
- id: four_d
  doc: (For use with --features; assumes coding regions have feature type 'CDS')  Extract
    sufficient statistics for fourfold degenerate synonymous sites.  Implies --out-format
    SS --unordered-stats --tuple-size 3 --reverse-groups transcript_id.
  type: boolean
  inputBinding:
    prefix: --4d
- id: clean_coding
  doc: Clean an alignment of coding sequences with respect to a named reference sequence.  Removes
    sites with gaps and blocks of gapless sites smaller than 10 codons in length,
    ensures everything is in-frame wrt reference sequence, prohibits in-frame stop
    codons.  Reference sequence must begin with a start codon and end with a stop
    codon.
  type: string
  inputBinding:
    prefix: --clean-coding
- id: clean_indels
  doc: Clean an alignment with special attention to indels.  Sites with fewer than
    <nseqs> bases are removed; bases adjacent to indels, and short gapless subsequences,
    are replaced with Ns. If used with --tuple-size, then <tup_size>-1 columns of
    Ns will be retained between columns not adjacent in the original alignment.  Frame
    is not considered.
  type: string
  inputBinding:
    prefix: --clean-indels
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- msa_view
