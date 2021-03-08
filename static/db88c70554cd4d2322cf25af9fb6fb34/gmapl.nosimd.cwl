class: CommandLineTool
id: gmapl.nosimd.cwl
inputs:
- id: in_dir
  doc: "Genome directory.  Default (as specified by --with-gmapdb to the configure\
    \ program) is\n/usr/local/share"
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_db
  doc: "Genome database.  If argument is '?' (with\nthe quotes), this command lists\
    \ available databases."
  type: string?
  inputBinding:
    prefix: --db
- id: in_km_er
  doc: "kmer size to use in genome database (allowed values: 16 or less).\nIf not\
    \ specified, the program will find the highest available\nkmer size in the genome\
    \ database"
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_sampling
  doc: "Sampling to use in genome database.  If not specified, the program\nwill find\
    \ the smallest available sampling value in the genome database\nwithin selected\
    \ k-mer size"
  type: long?
  inputBinding:
    prefix: --sampling
- id: in_gs_eg
  doc: User-supplied genomic segment
  type: File?
  inputBinding:
    prefix: --gseg
- id: in_self_align
  doc: "Align one sequence against itself in FASTA format via stdin\n(Useful for getting\
    \ protein translation of a nucleotide sequence)"
  type: boolean?
  inputBinding:
    prefix: --selfalign
- id: in_pair_align
  doc: "Align two sequences in FASTA format via stdin, first one being\ngenomic and\
    \ second one being cDNA"
  type: boolean?
  inputBinding:
    prefix: --pairalign
- id: in_cmdline
  doc: ",STRING        Align these two sequences provided on the command line,\nfirst\
    \ one being genomic and second one being cDNA"
  type: string?
  inputBinding:
    prefix: --cmdline
- id: in_part
  doc: "/INT             Process only the i-th out of every n sequences\ne.g., 0/100\
    \ or 99/100 (useful for distributing jobs\nto a computer farm)."
  type: long?
  inputBinding:
    prefix: --part
- id: in_input_buffer_size
  doc: "Size of input buffer (program reads this many sequences\nat a time for efficiency)\
    \ (default 1000)"
  type: long?
  inputBinding:
    prefix: --input-buffer-size
- id: in_batch
  doc: Batch mode (default = 2)
  type: long?
  inputBinding:
    prefix: --batch
- id: in_use_shared_memory
  doc: "If 1, then allocated memory is shared among all processes on this node\nIf\
    \ 0 (default), then each process has private allocated memory"
  type: long?
  inputBinding:
    prefix: --use-shared-memory
- id: in_no_splicing
  doc: "Turns off splicing (useful for aligning genomic sequences\nonto a genome)"
  type: boolean?
  inputBinding:
    prefix: --nosplicing
- id: in_max_deletion_length
  doc: "Max length for a deletion (default 100).  Above this size,\na genomic gap\
    \ will be considered an intron rather than a deletion.\nIf the genomic gap is\
    \ less than --max-deletionlength and greater\nthan --min-intronlength, a known\
    \ splice site or splice site probabilities\nof 0.80 on both sides will be reported\
    \ as an intron."
  type: long?
  inputBinding:
    prefix: --max-deletionlength
- id: in_min_intron_length
  doc: "Min length for one internal intron (default 9).  Below this size,\na genomic\
    \ gap will be considered a deletion rather than an intron.\nIf the genomic gap\
    \ is less than --max-deletionlength and greater\nthan --min-intronlength, a known\
    \ splice site or splice site probabilities\nof 0.80 on both sides will be reported\
    \ as an intron."
  type: long?
  inputBinding:
    prefix: --min-intronlength
- id: in_max_intron_length_middle
  doc: "Max length for one internal intron (default 500000).  Note: for backward\n\
    compatibility, the -K or --intronlength flag will set both\n--max-intronlength-middle\
    \ and --max-intronlength-ends.\nAlso see --split-large-introns below."
  type: long?
  inputBinding:
    prefix: --max-intronlength-middle
- id: in_max_intron_length_ends
  doc: "Max length for first or last intron (default 10000).  Note: for backward\n\
    compatibility, the -K or --intronlength flag will set both\n--max-intronlength-middle\
    \ and --max-intronlength-ends."
  type: long?
  inputBinding:
    prefix: --max-intronlength-ends
- id: in_split_large_introns
  doc: "Sometimes GMAP will exceed the value for --max-intronlength-middle,\nif it\
    \ finds a good single alignment.  However, you can force GMAP\nto split such alignments\
    \ by using this flag"
  type: boolean?
  inputBinding:
    prefix: --split-large-introns
- id: in_trim_end_exons
  doc: "Trim end exons with fewer than given number of matches\n(in nt, default 12)"
  type: long?
  inputBinding:
    prefix: --trim-end-exons
- id: in_local_splice_dist
  doc: "Max length for known splice sites at ends of sequence\n(default 2000000)"
  type: long?
  inputBinding:
    prefix: --localsplicedist
- id: in_total_length
  doc: Max total intron length (default 2400000)
  type: long?
  inputBinding:
    prefix: --totallength
- id: in_chimera_margin
  doc: "Amount of unaligned sequence that triggers\nsearch for the remaining sequence\
    \ (default 30).\nEnables alignment of chimeric reads, and may help\nwith some\
    \ non-chimeric reads.  To turn off, set to\nzero."
  type: long?
  inputBinding:
    prefix: --chimera-margin
- id: in_no_chimeras
  doc: Turns off finding of chimeras.  Same effect as --chimera-margin=0
  type: boolean?
  inputBinding:
    prefix: --no-chimeras
- id: in_n_threads
  doc: Number of worker threads
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_chr_subset
  doc: Limit search to given chromosome
  type: string?
  inputBinding:
    prefix: --chrsubset
- id: in_strand
  doc: Genome strand to try aligning to (plus, minus, or both default)
  type: string?
  inputBinding:
    prefix: --strand
- id: in_direction
  doc: "cDNA direction (sense_force, antisense_force,\nsense_filter, antisense_filter,or\
    \ auto (default))"
  type: string?
  inputBinding:
    prefix: --direction
- id: in_canonical_mode
  doc: "Reward for canonical and semi-canonical introns\n0=low reward, 1=high reward\
    \ (default), 2=low reward for\nhigh-identity sequences and high reward otherwise"
  type: long?
  inputBinding:
    prefix: --canonical-mode
- id: in_cross_species
  doc: "Use a more sensitive search for canonical splicing, which helps especially\n\
    for cross-species alignments and other difficult cases"
  type: boolean?
  inputBinding:
    prefix: --cross-species
- id: in_allow_close_indels
  doc: "Allow an insertion and deletion close to each other\n(0=no, 1=yes (default),\
    \ 2=only for high-quality alignments)"
  type: long?
  inputBinding:
    prefix: --allow-close-indels
- id: in_micro_exon_splice_prob
  doc: "Allow microexons only if one of the splice site probabilities is\ngreater\
    \ than this value (default 0.95)"
  type: double?
  inputBinding:
    prefix: --microexon-spliceprob
- id: in_in_del_open
  doc: In dynamic programming, opening penalty for indel
  type: boolean?
  inputBinding:
    prefix: --indel-open
- id: in_in_del_extend
  doc: "In dynamic programming, extension penalty for indel\nValues for --indel-open\
    \ and --indel-extend should be in [-127,-1].\nIf value is < -127, then will use\
    \ -127 instead.\nIf --indel-open and --indel-extend are not specified, values\
    \ are chosen\nadaptively, based on the differences between the query and reference"
  type: boolean?
  inputBinding:
    prefix: --indel-extend
- id: in_c_met_dir
  doc: "Directory for methylcytosine index files (created using cmetindex)\n(default\
    \ is location of genome index files specified using -D, -V, and -d)"
  type: Directory?
  inputBinding:
    prefix: --cmetdir
- id: in_atoi_dir
  doc: "Directory for A-to-I RNA editing index files (created using atoiindex)\n(default\
    \ is location of genome index files specified using -D, -V, and -d)"
  type: Directory?
  inputBinding:
    prefix: --atoidir
- id: in_alignment_mode_standard
  doc: "Alignment mode: standard (default), cmet-stranded, cmet-nonstranded,\natoi-stranded,\
    \ atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded.\nNon-standard modes requires\
    \ you to have previously run the cmetindex\nor atoiindex programs (which also\
    \ cover the ttoc modes) on the genome"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_prune_level
  doc: "Pruning level: 0=no pruning (default), 1=poor seqs,\n2=repetitive seqs, 3=poor\
    \ and repetitive"
  type: boolean?
  inputBinding:
    prefix: --prunelevel
- id: in_summary
  doc: Show summary of alignments only
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_align
  doc: Show alignments
  type: boolean?
  inputBinding:
    prefix: --align
- id: in_continuous
  doc: Show alignment in three continuous lines
  type: boolean?
  inputBinding:
    prefix: --continuous
- id: in_continuous_by_exon
  doc: Show alignment in three lines per exon
  type: boolean?
  inputBinding:
    prefix: --continuous-by-exon
- id: in_exons
  doc: "Print exons (\"cdna\" or \"genomic\")\nWill also print introns with \"cdna+introns\"\
    \ or\n\"genomic+introns\""
  type: string?
  inputBinding:
    prefix: --exons
- id: in_protein_dna
  doc: Print protein sequence (cDNA)
  type: boolean?
  inputBinding:
    prefix: --protein_dna
- id: in_protein_gen
  doc: Print protein sequence (genomic)
  type: boolean?
  inputBinding:
    prefix: --protein_gen
- id: in_format
  doc: "Other format for output (also note the -A and -S options\nand other options\
    \ listed under Output types):\nmask_introns,\nmask_utr_introns,\npsl (or 1) =\
    \ PSL (BLAT) format,\ngff3_gene (or 2) = GFF3 gene format,\ngff3_match_cdna (or\
    \ 3) = GFF3 cDNA_match format,\ngff3_match_est (or 4) = GFF3 EST_match format,\n\
    splicesites (or 6) = splicesites output (for GSNAP splicing file),\nintrons =\
    \ introns output (for GSNAP splicing file),\nmap_exons (or 7) = IIT FASTA exon\
    \ map format,\nmap_ranges (or 8) = IIT FASTA range map format,\ncoords (or 9)\
    \ = coords in table format,\nsampe = SAM format (setting paired_read bit in flag),\n\
    samse = SAM format (without setting paired_read bit),\nbedpe = indels and gaps\
    \ in BEDPE format"
  type: File?
  inputBinding:
    prefix: --format
- id: in_n_paths
  doc: "Maximum number of paths to show (default 5).  If set to 1, GMAP\nwill not\
    \ report chimeric alignments, since those imply\ntwo paths.  If you want a single\
    \ alignment plus chimeric\nalignments, then set this to be 0."
  type: long?
  inputBinding:
    prefix: --npaths
- id: in_suboptimal_score
  doc: "Report only paths whose score is within this value of the\nbest path.\nIf\
    \ specified between 0.0 and 1.0, then treated as a fraction\nof the score of the\
    \ best alignment (matches minus penalties for\nmismatches and indels).  Otherwise,\
    \ treated as an integer\nnumber to be subtracted from the score of the best alignment.\n\
    Default value is 0.50."
  type: double?
  inputBinding:
    prefix: --suboptimal-score
- id: in_ordered
  doc: "Print output in same order as input (relevant\nonly if there is more than\
    \ one worker thread)"
  type: boolean?
  inputBinding:
    prefix: --ordered
- id: in_md_five
  doc: Print MD5 checksum for each query sequence
  type: boolean?
  inputBinding:
    prefix: --md5
- id: in_chimera_overlap
  doc: Overlap to show, if any, at chimera breakpoint
  type: boolean?
  inputBinding:
    prefix: --chimera-overlap
- id: in_fails_only
  doc: Print only failed alignments, those with no results
  type: boolean?
  inputBinding:
    prefix: --failsonly
- id: in_no_fails
  doc: Exclude printing of failed alignments
  type: boolean?
  inputBinding:
    prefix: --nofails
- id: in_snps_dir
  doc: "Directory for SNPs index files (created using snpindex) (default is\nlocation\
    \ of genome index files specified using -D and -d)"
  type: Directory?
  inputBinding:
    prefix: --snpsdir
- id: in_use_snps
  doc: "Use database containing known SNPs (in <STRING>.iit, built\npreviously using\
    \ snpindex) for tolerance to SNPs"
  type: string?
  inputBinding:
    prefix: --use-snps
- id: in_split_output
  doc: "Basename for multiple-file output, separately for nomapping,\nuniq, mult,\
    \ (and chimera, if --chimera-margin is selected)"
  type: File?
  inputBinding:
    prefix: --split-output
- id: in_failed_input
  doc: "Print completely failed alignments as input FASTA or FASTQ format\nto the\
    \ given file.  If the --split-output flag is also given, this file\nis generated\
    \ in addition to the output in the .nomapping file."
  type: File?
  inputBinding:
    prefix: --failed-input
- id: in_append_output
  doc: "When --split-output or --failedinput is given, this flag will append output\n\
    to the existing files.  Otherwise, the default is to create new files."
  type: boolean?
  inputBinding:
    prefix: --append-output
- id: in_output_buffer_size
  doc: "Buffer size, in queries, for output thread (default 1000).  When the number\n\
    of results to be printed exceeds this size, the worker threads are halted\nuntil\
    \ the backlog is cleared"
  type: long?
  inputBinding:
    prefix: --output-buffer-size
- id: in_translation_code
  doc: "Genetic code used for translating codons to amino acids and computing CDS\n\
    Integer value (default=1) corresponds to an available code at\nhttp://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi"
  type: long?
  inputBinding:
    prefix: --translation-code
- id: in_alt_start_codons
  doc: "Also, use the alternate initiation codons shown in the above Web site\nBy\
    \ default, without this option, only ATG is considered an initiation codon"
  type: boolean?
  inputBinding:
    prefix: --alt-start-codons
- id: in_full_length
  doc: Assume full-length protein, starting with Met
  type: boolean?
  inputBinding:
    prefix: --fulllength
- id: in_cds_start
  doc: Translate codons from given nucleotide (1-based)
  type: long?
  inputBinding:
    prefix: --cdsstart
- id: in_truncate
  doc: "Truncate alignment around full-length protein, Met to Stop\nImplies -F flag."
  type: boolean?
  inputBinding:
    prefix: --truncate
- id: in_tolerant
  doc: Translates cDNA with corrections for frameshifts
  type: boolean?
  inputBinding:
    prefix: --tolerant
- id: in_gff_three_add_separators
  doc: "Whether to add a ### separator after each query sequence\nValues: 0 (no),\
    \ 1 (yes, default)"
  type: long?
  inputBinding:
    prefix: --gff3-add-separators
- id: in_gff_three_swap_phase
  doc: "Whether to swap phase (0 => 0, 1 => 2, 2 => 1) in gff3_gene format\nNeeded\
    \ by some analysis programs, but deviates from GFF3 specification\nValues: 0 (no,\
    \ default), 1 (yes)"
  type: long?
  inputBinding:
    prefix: --gff3-swap-phase
- id: in_gff_three_fast_a_annotation
  doc: "Whether to include annotation from the FASTA header into the GFF3 output\n\
    Values: 0 (default): Do not include\n1: Wrap all annotation as Annot=\"<header>\"\
    \n2: Include key=value pairs, replacing brackets with quotation marks\nand replacing\
    \ spaces between key=value pairs with semicolons"
  type: long?
  inputBinding:
    prefix: --gff3-fasta-annotation
- id: in_gff_three_cds
  doc: "Whether to use cDNA or genomic translation for the CDS coordinates\nValues:\
    \ cdna (default), genomic"
  type: long?
  inputBinding:
    prefix: --gff3-cds
- id: in_no_sam_headers
  doc: Do not print headers beginning with '@'
  type: boolean?
  inputBinding:
    prefix: --no-sam-headers
- id: in_sam_use_zero_m
  doc: "Insert 0M in CIGAR between adjacent insertions and deletions\nRequired by\
    \ Picard, but can cause errors in other tools"
  type: boolean?
  inputBinding:
    prefix: --sam-use-0M
- id: in_sam_extended_cigar
  doc: "Use extended CIGAR format (using X and = symbols instead of M,\nto indicate\
    \ matches and mismatches, respectively"
  type: boolean?
  inputBinding:
    prefix: --sam-extended-cigar
- id: in_force_xs_dir
  doc: "For RNA-Seq alignments, disallows XS:A:? when the sense direction\nis unclear,\
    \ and replaces this value arbitrarily with XS:A:+.\nMay be useful for some programs,\
    \ such as Cufflinks, that cannot\nhandle XS:A:?.  However, if you use this flag,\
    \ the reported value\nof XS:A:+ in these cases will not be meaningful."
  type: boolean?
  inputBinding:
    prefix: --force-xs-dir
- id: in_md_lowercase_snp
  doc: "In MD string, when known SNPs are given by the -v flag,\nprints difference\
    \ nucleotides as lower-case when they,\ndiffer from reference but match a known\
    \ alternate allele"
  type: boolean?
  inputBinding:
    prefix: --md-lowercase-snp
- id: in_action_if_cigar_error
  doc: "Action to take if there is a disagreement between CIGAR length and sequence\
    \ length\nAllowed values: ignore, warning (default), noprint, abort\nNote that\
    \ the noprint option does not print the CIGAR string at all if there\nis an error,\
    \ so it may break a SAM parser"
  type: boolean?
  inputBinding:
    prefix: --action-if-cigar-error
- id: in_read_group_id
  doc: Value to put into read-group id (RG-ID) field
  type: string?
  inputBinding:
    prefix: --read-group-id
- id: in_read_group_name
  doc: Value to put into read-group name (RG-SM) field
  type: string?
  inputBinding:
    prefix: --read-group-name
- id: in_read_group_library
  doc: Value to put into read-group library (RG-LB) field
  type: string?
  inputBinding:
    prefix: --read-group-library
- id: in_read_group_platform
  doc: Value to put into read-group library (RG-PL) field
  type: string?
  inputBinding:
    prefix: --read-group-platform
- id: in_quality_protocol
  doc: "Protocol for input quality scores.  Allowed values:\nillumina (ASCII 64-126)\
    \ (equivalent to -J 64 -j -31)\nsanger   (ASCII 33-126) (equivalent to -J 33 -j\
    \ 0)\nDefault is sanger (no quality print shift)\nSAM output files should have\
    \ quality scores in sanger protocol\nOr you can specify the print shift with this\
    \ flag:"
  type: long?
  inputBinding:
    prefix: --quality-protocol
- id: in_quality_print_shift
  doc: "Shift FASTQ quality scores by this amount in output\n(default is 0 for sanger\
    \ protocol; to change Illumina input\nto Sanger output, select -31)"
  type: long?
  inputBinding:
    prefix: --quality-print-shift
- id: in_map_dir
  doc: Map directory
  type: Directory?
  inputBinding:
    prefix: --mapdir
- id: in_map
  doc: "Map file.  If argument is '?' (with the quotes),\nthis lists available map\
    \ files."
  type: File?
  inputBinding:
    prefix: --map
- id: in_map_exons
  doc: Map each exon separately
  type: boolean?
  inputBinding:
    prefix: --mapexons
- id: in_map_both
  doc: Report hits from both strands of genome
  type: boolean?
  inputBinding:
    prefix: --mapboth
- id: in_flanking
  doc: Show flanking hits (default 0)
  type: long?
  inputBinding:
    prefix: --flanking
- id: in_print_comment
  doc: Show comment line for each hit
  type: boolean?
  inputBinding:
    prefix: --print-comment
- id: in_no_lengths
  doc: No intron lengths in alignment
  type: boolean?
  inputBinding:
    prefix: --nolengths
- id: in_no_margin
  doc: No left margin in GMAP standard output (with the -A flag)
  type: boolean?
  inputBinding:
    prefix: --nomargin
- id: in_invert_mode
  doc: "Mode for alignments to genomic (-) strand:\n0=Don't invert the cDNA (default)\n\
    1=Invert cDNA and print genomic (-) strand\n2=Invert cDNA and print genomic (+)\
    \ strand"
  type: long?
  inputBinding:
    prefix: --invertmode
- id: in_intron_gap
  doc: Nucleotides to show on each end of intron (default 3)
  type: long?
  inputBinding:
    prefix: --introngap
- id: in_wrap_length
  doc: Wrap length for alignment (default 50)
  type: long?
  inputBinding:
    prefix: --wraplength
- id: in_min_trimmed_coverage
  doc: "Do not print alignments with trimmed coverage less\nthis value (default=0.0,\
    \ which means no filtering)\nNote that chimeric alignments will be output regardless\n\
    of this filter"
  type: double?
  inputBinding:
    prefix: --min-trimmed-coverage
- id: in_min_identity
  doc: "Do not print alignments with identity less\nthis value (default=0.0, which\
    \ means no filtering)\nNote that chimeric alignments will be output regardless\n\
    of this filter"
  type: double?
  inputBinding:
    prefix: --min-identity
- id: in_check
  doc: Check compiler assumptions
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_positions_mmap_mmap
  doc: "Positions       Genome\n0      mmap            mmap\n1      mmap & preload\
    \  mmap"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: "Other format for output (also note the -A and -S options\nand other options\
    \ listed under Output types):\nmask_introns,\nmask_utr_introns,\npsl (or 1) =\
    \ PSL (BLAT) format,\ngff3_gene (or 2) = GFF3 gene format,\ngff3_match_cdna (or\
    \ 3) = GFF3 cDNA_match format,\ngff3_match_est (or 4) = GFF3 EST_match format,\n\
    splicesites (or 6) = splicesites output (for GSNAP splicing file),\nintrons =\
    \ introns output (for GSNAP splicing file),\nmap_exons (or 7) = IIT FASTA exon\
    \ map format,\nmap_ranges (or 8) = IIT FASTA range map format,\ncoords (or 9)\
    \ = coords in table format,\nsampe = SAM format (setting paired_read bit in flag),\n\
    samse = SAM format (without setting paired_read bit),\nbedpe = indels and gaps\
    \ in BEDPE format"
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
- id: out_split_output
  doc: "Basename for multiple-file output, separately for nomapping,\nuniq, mult,\
    \ (and chimera, if --chimera-margin is selected)"
  type: File?
  outputBinding:
    glob: $(inputs.in_split_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2021.02.22--pl526h2f06484_0
cwlVersion: v1.1
baseCommand:
- gmapl.nosimd
