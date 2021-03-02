class: CommandLineTool
id: msa_view.cwl
inputs:
- id: in_out_format
  doc: "|FASTA|MPM|SS\n(Default FASTA)  Output file format."
  type: File?
  inputBinding:
    prefix: --out-format
- id: in_tuple_size
  doc: "(For use with --out-format SS).  Represent an alignment in\nterms of tuples\
    \ of columns of the designated size.  Useful\nwith context-dependent phylogenetic\
    \ models."
  type: long?
  inputBinding:
    prefix: --tuple-size
- id: in_start
  doc: "Starting column of sub-alignment (indexing starts with 1).\nDefault is 1.\
    \  Note that coordinates use the frame of reference\nof the entire alignment unless\
    \ --refidx 1 is specified."
  type: long?
  inputBinding:
    prefix: --start
- id: in_end
  doc: "Ending column of sub-alignment.  Default is length of\nalignment.  Note that\
    \ coordinates use the frame of reference\nof the entire alignment unless --refidx\
    \ 1 is specified."
  type: long?
  inputBinding:
    prefix: --end
- id: in_seqs
  doc: "Comma-separated list of sequences to include (default)\nexclude (if --exclude).\
    \  Indicate by sequence number or name\n(numbering starts with 1 and is evaluated\
    \ *after* --order is\napplied)."
  type: long?
  inputBinding:
    prefix: --seqs
- id: in_exclude
  doc: Exclude rather than include specified sequences.
  type: boolean?
  inputBinding:
    prefix: --exclude
- id: in_ref_idx
  doc: "Index of reference sequence for coordinates.  Use 0 to\nindicate the coordinate\
    \ system of the alignment as a whole\n(this is the default)."
  type: long?
  inputBinding:
    prefix: --refidx
- id: in_aggregate
  doc: "(Not compatible with --start or --end) Create an aggregate\nalignment from\
    \ a set of alignment files, by concatenating\nindividual alignments.  If used\
    \ with --out-format SS and\n--unordered-ss, the aggregate alignment will never\
    \ be created\nexplicitly (recommended for large data sets).  The argument\n<name_list>\
    \ must be a list of sequence names, including all\nnames in all specified alignments\
    \ (missing sequences will be\nreplaced by rows of missing data).  The standard\
    \ <msa_fname>\nargument should be replaced with a list of (whitespace-\nseparated)\
    \ file names."
  type: File?
  inputBinding:
    prefix: --aggregate
- id: in_split_all
  doc: "Split output alignment into separate fasta files by species.\nFile naming\
    \ convention is filename_root.species.fa. If used with\n--gap-strip, gap characters\
    \ will be stripped from all output files.\nIn this case, '--gap-strip <s>' should\
    \ NOT be used (ALL or ANY\nshould both work fine)."
  type: File?
  inputBinding:
    prefix: --split-all
- id: in_in_format
  doc: "|FASTA|MPM|MAF|SS\n(Default is to guess format from file contents).  Input\
    \ file\nformat.  FASTA is as usual.  PHYLIP is compatible with the formats\nused\
    \ in the PHYLIP and PAML packages.  MPM is the format used by the\nMultiPipMaker\
    \ aligner and some other of Webb Miller's older tools.\nMAF (\"Multiple Alignment\
    \ Format\") is used by MULTIZ/TBA and the\nUCSC Genome Browser.  SS is a simple\
    \ format describing the\nsufficient statistics for phylogenetic inference (distinct\
    \ columns\nor tuple of columns and their counts).  Use --out-format SS with\n\
    --in-format MAF for best efficiency (explicit alignment is\nnever created).  Also,\
    \ use --unordered-ss if possible."
  type: File?
  inputBinding:
    prefix: --in-format
- id: in_alphabet
  doc: "Use the specified alphabet (default \"ACGT\").  In addition,\n'-' characters\
    \ are assumed to represent alignment gaps, and\n'*' and 'N' characters are allowed\
    \ for missing data.\nAlphabetical letters not in the alphabet will be converted\
    \ to\n'N's upon input.  This option is ignored with SS input (alphabet\nspecified\
    \ within SS files.)"
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_soft_masked
  doc: Implies --alphabet 'ACGTNacgtn', useful for soft-masked sequences.
  type: boolean?
  inputBinding:
    prefix: --soft-masked
- id: in_unmask
  doc: Remove soft-masking; convert to uppercase.
  type: boolean?
  inputBinding:
    prefix: --unmask
- id: in_pretty
  doc: "Pretty-print alignment (use '.' when character matches\ncorresponding character\
    \ in first sequence).  Ignored if\n--out-format SS is selected."
  type: boolean?
  inputBinding:
    prefix: --pretty
- id: in_gap_strip
  doc: "|ANY|<s>\nStrip columns containing all gaps, any gaps, or a gap in the\nspecified\
    \ sequence (<s>).  Indexing starts at one and refers\nto the list *after* any\
    \ sequences have been added or\nsubtracted (via --seqs and --exclude or --order)."
  type: string?
  inputBinding:
    prefix: --gap-strip
- id: in_collapse_missing
  doc: "(For use with -o SS) Convert all missing-data characters and\ngaps to \"*\"\
    \ characters.  Can be used to make sufficient\nstatistics more compact, which\
    \ can improve the performance of\nphyloFit (all missing data and gap characters\
    \ are typically\ntreated the same by phyloFit anyway)."
  type: boolean?
  inputBinding:
    prefix: --collapse-missing
- id: in_mark_missing
  doc: "Convert all gaps of length greater than <maxlen> to \"*\"\ncharacters.  If\
    \ --refidx is specified (with a positive index),\ngaps in the designated reference\
    \ sequence will not be altered.\nThis is a useful heuristic for distinguishing\
    \ between\nmicroindels and regions of missing data (e.g., due to\nlarge-scale\
    \ indels, incomplete assemblies, or highly\ndiverged sequences)."
  type: long?
  inputBinding:
    prefix: --mark-missing
- id: in_missing_as_indels
  doc: "Convert all missing data characters (Ns and *s) to gap\ncharacters, except\
    \ for Ns in a reference sequence specified by\n--refidx, which will be replaced\
    \ by randomly selected\nnucleotides.  (This allows the coordinate frame for the\n\
    reference sequence to be maintained; this option is only\nrecommended if such\
    \ Ns are rare.)  If --refidx is not\nused, all Ns will be replaced by gaps.  You\
    \ may want to use\n--gap-strip ALL with this option."
  type: boolean?
  inputBinding:
    prefix: --missing-as-indels
- id: in_order
  doc: "Change order of rows in alignment to match sequence names\nspecified in name_list.\
    \  If a name appears in name_list but\nnot in the alignment, a row of gaps will\
    \ be inserted.  This\noption is applied to the alignment *before* --seqs,\n--refidx,\
    \ and --gap-strip are applied."
  type: string?
  inputBinding:
    prefix: --order
- id: in_reverse_complement
  doc: Reverse complement output alignment.
  type: boolean?
  inputBinding:
    prefix: --reverse-complement
- id: in_randomize
  doc: "Randomly permute the columns of the source alignment (done\n*before* taking\
    \ sub-alignment).  Requires an ordered\nrepresentation of the alignment (careful\
    \ using with\n--in-format SS|MAF -- will create full alignment from\nsufficient\
    \ statistics)."
  type: boolean?
  inputBinding:
    prefix: --randomize
- id: in_fill_ns
  doc: "<s:b-e>\nFill sequence no. <s> with Ns, from <b> to <e>. Applied before\n\
    --start, --end, --seqs, --gap-strip, but after --order.\nCoordinate frame depends\
    \ on --refidx.  Can be used\nmultiple times."
  type: boolean?
  inputBinding:
    prefix: --fill-Ns
- id: in_summary_only
  doc: "Report only summary statistics, rather than complete\nalignment.  Statistics\
    \ are for alignment that would otherwise\nbe output (i.e., after other options\
    \ have been applied)."
  type: boolean?
  inputBinding:
    prefix: --summary-only
- id: in_window_summary
  doc: "Like -S, but output summary statistics for non-overlapping\nwindows of the\
    \ specified size."
  type: long?
  inputBinding:
    prefix: --window-summary
- id: in_unordered_ss
  doc: "(For use with --out-format SS).  Suppress the portion of the\nsufficient statistics\
    \ concerned with the order in which\ncolumns appear.  Useful for analyses for\
    \ which order is\nunimportant."
  type: boolean?
  inputBinding:
    prefix: --unordered-ss
- id: in_refseq
  doc: "Read the complete text of the reference sequence from\n<fname> (FASTA format)\
    \ and combine it with the contents of\nthe MAF file to produce a complete, ordered\
    \ representation of\nthe alignment (unaligned regions will be represented by gaps).\n\
    Best used with --out-format SS.  The reference sequence of the\nMAF file is assumed\
    \ to be the one that appears first in each\nblock."
  type: File?
  inputBinding:
    prefix: --refseq
- id: in_keep_overlapping
  doc: "Keep blocks in MAF that have overlapping coordinates in the\nreference (1st)\
    \ sequence (by default, only the first one is\nkept).  Useful in extracting unordered\
    \ stats from a jumbled\ncollection of MAF blocks (e.g., output of Jim Kent's mafFrags\n\
    program).  Cannot be used with --refseq, --features, or\n--cats-cycle."
  type: boolean?
  inputBinding:
    prefix: --keep-overlapping
- id: in_features
  doc: "(Requires --catmap) Read sequence annotations from the\nspecified file (GFF)\
    \ and label the columns of the alignment\naccordingly.  Note: UCSC BED and genepred\
    \ formats are now\nrecognized as well."
  type: File?
  inputBinding:
    prefix: --features
- id: in_cat_map
  doc: "|<string>\n(optionally use with --features) Mapping of feature types to\n\
    category numbers.  Can either give a filename or an \"inline\"\ndescription of\
    \ a simple category map, e.g., --catmap \"NCATS =\n3 ; CDS 1-3\" or --catmap \"\
    NCATS = 1 ; UTR 1\"."
  type: File?
  inputBinding:
    prefix: --catmap
- id: in_cats_cycle
  doc: "(alternative to --features and --catmap) Assign site categories in\ncycles\
    \ of the specified size, e.g., as 1,2,3,...,1,2,3 (for\ncycle_size == 3).  Useful\
    \ for in-frame coding sequence, or to\npartition a data set into nonoverlapping\
    \ tuples of columns\n(use with --do-cats)."
  type: long?
  inputBinding:
    prefix: --cats-cycle
- id: in_do_cats
  doc: "(For use with --features or --cats-cycle)  Obtain\nsufficient statistics only\
    \ for the specified categories\n(comma-delimited list, by number)."
  type: long?
  inputBinding:
    prefix: --do-cats
- id: in_codons
  doc: "Extract sufficient statistics for in-frame codons.  Implies\n--tuple-size\
    \ 3 --cats-cycle 3 --do-cats 3.  Not appropriate\nfor use with --features/--catmap."
  type: boolean?
  inputBinding:
    prefix: --codons
- id: in_reverse_groups
  doc: "(For use with --features) Group features by <tag> (e.g.,\n\"transcript_id\"\
    \ or \"exon_id\") and reverse complement\nsegments of the alignment corresponding\
    \ to groups on the\nreverse strand.  Groups must be non-overlapping (see refeature\n\
    --unique).  Useful when extracting sufficient statistics for\nstrand-specific\
    \ site categories (e.g., codon positions)."
  type: string?
  inputBinding:
    prefix: --reverse-groups
- id: in_four_d
  doc: "(For use with --features; assumes coding regions have feature\ntype 'CDS')\
    \  Extract sufficient statistics for fourfold\ndegenerate synonymous sites.  Implies\
    \ --out-format SS\n--unordered-stats --tuple-size 3 --reverse-groups transcript_id."
  type: boolean?
  inputBinding:
    prefix: --4d
- id: in_clean_coding
  doc: "Clean an alignment of coding sequences with respect to a named\nreference\
    \ sequence.  Removes sites with gaps and blocks of\ngapless sites smaller than\
    \ 10 codons in length, ensures\neverything is in-frame wrt reference sequence,\
    \ prohibits\nin-frame stop codons.  Reference sequence must begin with a\nstart\
    \ codon and end with a stop codon."
  type: long?
  inputBinding:
    prefix: --clean-coding
- id: in_clean_indels
  doc: "Clean an alignment with special attention to indels.  Sites\nwith fewer than\
    \ <nseqs> bases are removed; bases adjacent to\nindels, and short gapless subsequences,\
    \ are replaced with Ns.\nIf used with --tuple-size, then <tup_size>-1 columns\
    \ of Ns\nwill be retained between columns not adjacent in the original\nalignment.\
    \  Frame is not considered."
  type: long?
  inputBinding:
    prefix: --clean-indels
- id: in_alignments_dot
  doc: Can extract a sub-alignment from an alignment (by row
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_format
  doc: "|FASTA|MPM|SS\n(Default FASTA)  Output file format."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_format)
- id: out_aggregate
  doc: "(Not compatible with --start or --end) Create an aggregate\nalignment from\
    \ a set of alignment files, by concatenating\nindividual alignments.  If used\
    \ with --out-format SS and\n--unordered-ss, the aggregate alignment will never\
    \ be created\nexplicitly (recommended for large data sets).  The argument\n<name_list>\
    \ must be a list of sequence names, including all\nnames in all specified alignments\
    \ (missing sequences will be\nreplaced by rows of missing data).  The standard\
    \ <msa_fname>\nargument should be replaced with a list of (whitespace-\nseparated)\
    \ file names."
  type: File?
  outputBinding:
    glob: $(inputs.in_aggregate)
- id: out_split_all
  doc: "Split output alignment into separate fasta files by species.\nFile naming\
    \ convention is filename_root.species.fa. If used with\n--gap-strip, gap characters\
    \ will be stripped from all output files.\nIn this case, '--gap-strip <s>' should\
    \ NOT be used (ALL or ANY\nshould both work fine)."
  type: File?
  outputBinding:
    glob: $(inputs.in_split_all)
- id: out_refseq
  doc: "Read the complete text of the reference sequence from\n<fname> (FASTA format)\
    \ and combine it with the contents of\nthe MAF file to produce a complete, ordered\
    \ representation of\nthe alignment (unaligned regions will be represented by gaps).\n\
    Best used with --out-format SS.  The reference sequence of the\nMAF file is assumed\
    \ to be the one that appears first in each\nblock."
  type: File?
  outputBinding:
    glob: $(inputs.in_refseq)
hints: []
cwlVersion: v1.1
baseCommand:
- msa_view
