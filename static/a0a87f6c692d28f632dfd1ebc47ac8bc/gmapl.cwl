class: CommandLineTool
id: gmapl.sse42.cwl
inputs:
- id: cmdline
  doc: ',STRING        Align these two sequences provided on the command line, first
    one being genomic and second one being cDNA'
  type: string
  inputBinding:
    prefix: --cmdline
- id: part
  doc: /INT             Process only the i-th out of every n sequences e.g., 0/100
    or 99/100 (useful for distributing jobs to a computer farm).
  type: long
  inputBinding:
    prefix: --part
- id: input_buffer_size
  doc: Size of input buffer (program reads this many sequences at a time for efficiency)
    (default 1000)
  type: long
  inputBinding:
    prefix: --input-buffer-size
- id: no_splicing
  doc: Turns off splicing (useful for aligning genomic sequences onto a genome)
  type: boolean
  inputBinding:
    prefix: --nosplicing
- id: min_intron_length
  doc: Min length for one internal intron (default 9).  Below this size, a genomic
    gap will be considered a deletion rather than an intron.
  type: long
  inputBinding:
    prefix: --min-intronlength
- id: max_intron_length_middle
  doc: 'Max length for one internal intron (default 500000).  Note: for backward compatibility,
    the -K or --intronlength flag will set both --max-intronlength-middle and --max-intronlength-ends.
    Also see --split-large-introns below.'
  type: long
  inputBinding:
    prefix: --max-intronlength-middle
- id: max_intron_length_ends
  doc: 'Max length for first or last intron (default 10000).  Note: for backward compatibility,
    the -K or --intronlength flag will set both --max-intronlength-middle and --max-intronlength-ends.'
  type: long
  inputBinding:
    prefix: --max-intronlength-ends
- id: split_large_introns
  doc: Sometimes GMAP will exceed the value for --max-intronlength-middle, if it finds
    a good single alignment.  However, you can force GMAP to split such alignments
    by using this flag
  type: boolean
  inputBinding:
    prefix: --split-large-introns
- id: trim_end_exons
  doc: Trim end exons with fewer than given number of matches (in nt, default 12)
  type: long
  inputBinding:
    prefix: --trim-end-exons
- id: local_splice_dist
  doc: Max length for known splice sites at ends of sequence (default 2000000)
  type: long
  inputBinding:
    prefix: --localsplicedist
- id: total_length
  doc: Max total intron length (default 2400000)
  type: long
  inputBinding:
    prefix: --totallength
- id: chimera_margin
  doc: Amount of unaligned sequence that triggers search for the remaining sequence
    (default 30). Enables alignment of chimeric reads, and may help with some non-chimeric
    reads.  To turn off, set to zero.
  type: long
  inputBinding:
    prefix: --chimera-margin
- id: no_chimeras
  doc: Turns off finding of chimeras.  Same effect as --chimera-margin=0
  type: boolean
  inputBinding:
    prefix: --no-chimeras
- id: n_threads
  doc: Number of worker threads
  type: long
  inputBinding:
    prefix: --nthreads
- id: chr_subset
  doc: Limit search to given chromosome
  type: string
  inputBinding:
    prefix: --chrsubset
- id: direction
  doc: cDNA direction (sense_force, antisense_force, sense_filter, antisense_filter,or
    auto (default))
  type: string
  inputBinding:
    prefix: --direction
- id: canonical_mode
  doc: Reward for canonical and semi-canonical introns 0=low reward, 1=high reward
    (default), 2=low reward for high-identity sequences and high reward otherwise
  type: long
  inputBinding:
    prefix: --canonical-mode
- id: cross_species
  doc: Use a more sensitive search for canonical splicing, which helps especially
    for cross-species alignments and other difficult cases
  type: boolean
  inputBinding:
    prefix: --cross-species
- id: allow_close_indels
  doc: Allow an insertion and deletion close to each other (0=no, 1=yes (default),
    2=only for high-quality alignments)
  type: long
  inputBinding:
    prefix: --allow-close-indels
- id: micro_exon_splice_prob
  doc: Allow microexons only if one of the splice site probabilities is greater than
    this value (default 0.95)
  type: double
  inputBinding:
    prefix: --microexon-spliceprob
- id: c_met_dir
  doc: Directory for methylcytosine index files (created using cmetindex) (default
    is location of genome index files specified using -D, -V, and -d)
  type: string
  inputBinding:
    prefix: --cmetdir
- id: atoi_dir
  doc: Directory for A-to-I RNA editing index files (created using atoiindex) (default
    is location of genome index files specified using -D, -V, and -d)
  type: string
  inputBinding:
    prefix: --atoidir
- id: mode
  doc: 'Alignment mode: standard (default), cmet-stranded, cmet-nonstranded, atoi-stranded,
    atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded. Non-standard modes requires
    you to have previously run the cmetindex or atoiindex programs (which also cover
    the ttoc modes) on the genome'
  type: string
  inputBinding:
    prefix: --mode
- id: prune_level
  doc: 'Pruning level: 0=no pruning (default), 1=poor seqs, 2=repetitive seqs, 3=poor
    and repetitive'
  type: boolean
  inputBinding:
    prefix: --prunelevel
- id: compress
  doc: Print output in compressed format
  type: boolean
  inputBinding:
    prefix: --compress
- id: exons
  doc: Print exons ("cdna" or "genomic")
  type: string
  inputBinding:
    prefix: --exons
- id: protein_dna
  doc: Print protein sequence (cDNA)
  type: boolean
  inputBinding:
    prefix: --protein_dna
- id: protein_gen
  doc: Print protein sequence (genomic)
  type: boolean
  inputBinding:
    prefix: --protein_gen
- id: format
  doc: 'Other format for output (also note the -A and -S options and other options
    listed under Output types): psl (or 1) = PSL (BLAT) format, gff3_gene (or 2) =
    GFF3 gene format, gff3_match_cdna (or 3) = GFF3 cDNA_match format, gff3_match_est
    (or 4) = GFF3 EST_match format, splicesites (or 6) = splicesites output (for GSNAP
    splicing file), introns = introns output (for GSNAP splicing file), map_exons
    (or 7) = IIT FASTA exon map format, map_ranges (or 8) = IIT FASTA range map format,
    coords (or 9) = coords in table format, sampe = SAM format (setting paired_read
    bit in flag), samse = SAM format (without setting paired_read bit), bedpe = indels
    and gaps in BEDPE format'
  type: long
  inputBinding:
    prefix: --format
- id: chimera_overlap
  doc: Overlap to show, if any, at chimera breakpoint
  type: boolean
  inputBinding:
    prefix: --chimera-overlap
- id: fails_only
  doc: Print only failed alignments, those with no results
  type: boolean
  inputBinding:
    prefix: --failsonly
- id: no_fails
  doc: Exclude printing of failed alignments
  type: boolean
  inputBinding:
    prefix: --nofails
- id: snps_dir
  doc: Directory for SNPs index files (created using snpindex) (default is location
    of genome index files specified using -D and -d)
  type: string
  inputBinding:
    prefix: --snpsdir
- id: use_snps
  doc: Use database containing known SNPs (in <STRING>.iit, built previously using
    snpindex) for tolerance to SNPs
  type: string
  inputBinding:
    prefix: --use-snps
- id: split_output
  doc: Basename for multiple-file output, separately for nomapping, uniq, mult, (and
    chimera, if --chimera-margin is selected)
  type: string
  inputBinding:
    prefix: --split-output
- id: failed_input
  doc: Print completely failed alignments as input FASTA or FASTQ format to the given
    file.  If the --split-output flag is also given, this file is generated in addition
    to the output in the .nomapping file.
  type: string
  inputBinding:
    prefix: --failed-input
- id: append_output
  doc: When --split-output or --failedinput is given, this flag will append output
    to the existing files.  Otherwise, the default is to create new files.
  type: boolean
  inputBinding:
    prefix: --append-output
- id: output_buffer_size
  doc: Buffer size, in queries, for output thread (default 1000).  When the number
    of results to be printed exceeds this size, the worker threads are halted until
    the backlog is cleared
  type: long
  inputBinding:
    prefix: --output-buffer-size
- id: translation_code
  doc: Genetic code used for translating codons to amino acids and computing CDS Integer
    value (default=1) corresponds to an available code at http://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi
  type: long
  inputBinding:
    prefix: --translation-code
- id: alt_start_codons
  doc: Also, use the alternate initiation codons shown in the above Web site By default,
    without this option, only ATG is considered an initiation codon
  type: boolean
  inputBinding:
    prefix: --alt-start-codons
- id: full_length
  doc: Assume full-length protein, starting with Met
  type: boolean
  inputBinding:
    prefix: --fulllength
- id: cds_start
  doc: Translate codons from given nucleotide (1-based)
  type: long
  inputBinding:
    prefix: --cdsstart
- id: truncate
  doc: Truncate alignment around full-length protein, Met to Stop Implies -F flag.
  type: boolean
  inputBinding:
    prefix: --truncate
- id: tolerant
  doc: Translates cDNA with corrections for frameshifts
  type: boolean
  inputBinding:
    prefix: --tolerant
- id: gff3_add_separators
  doc: 'Whether to add a ### separator after each query sequence Values: 0 (no), 1
    (yes, default)'
  type: long
  inputBinding:
    prefix: --gff3-add-separators
- id: gff3_swap_phase
  doc: 'Whether to swap phase (0 => 0, 1 => 2, 2 => 1) in gff3_gene format Needed
    by some analysis programs, but deviates from GFF3 specification Values: 0 (no,
    default), 1 (yes)'
  type: long
  inputBinding:
    prefix: --gff3-swap-phase
- id: gff3_cds
  doc: 'Whether to use cDNA or genomic translation for the CDS coordinates Values:
    cdna (default), genomic'
  type: string
  inputBinding:
    prefix: --gff3-cds
- id: no_sam_headers
  doc: Do not print headers beginning with '@'
  type: boolean
  inputBinding:
    prefix: --no-sam-headers
- id: sam_use_0m
  doc: Insert 0M in CIGAR between adjacent insertions and deletions Required by Picard,
    but can cause errors in other tools
  type: boolean
  inputBinding:
    prefix: --sam-use-0M
- id: sam_extended_cigar
  doc: Use extended CIGAR format (using X and = symbols instead of M, to indicate
    matches and mismatches, respectively
  type: boolean
  inputBinding:
    prefix: --sam-extended-cigar
- id: force_xs_dir
  doc: For RNA-Seq alignments, disallows XS:A:? when the sense direction is unclear,
    and replaces this value arbitrarily with XS:A:+. May be useful for some programs,
    such as Cufflinks, that cannot handle XS:A:?.  However, if you use this flag,
    the reported value of XS:A:+ in these cases will not be meaningful.
  type: boolean
  inputBinding:
    prefix: --force-xs-dir
- id: md_lowercase_snp
  doc: In MD string, when known SNPs are given by the -v flag, prints difference nucleotides
    as lower-case when they, differ from reference but match a known alternate allele
  type: boolean
  inputBinding:
    prefix: --md-lowercase-snp
- id: action_if_cigar_error
  doc: 'Action to take if there is a disagreement between CIGAR length and sequence
    length Allowed values: ignore, warning (default), noprint, abort Note that the
    noprint option does not print the CIGAR string at all if there is an error, so
    it may break a SAM parser'
  type: boolean
  inputBinding:
    prefix: --action-if-cigar-error
- id: read_group_id
  doc: Value to put into read-group id (RG-ID) field
  type: string
  inputBinding:
    prefix: --read-group-id
- id: read_group_name
  doc: Value to put into read-group name (RG-SM) field
  type: string
  inputBinding:
    prefix: --read-group-name
- id: read_group_library
  doc: Value to put into read-group library (RG-LB) field
  type: string
  inputBinding:
    prefix: --read-group-library
- id: read_group_platform
  doc: Value to put into read-group library (RG-PL) field
  type: string
  inputBinding:
    prefix: --read-group-platform
- id: quality_protocol
  doc: 'Protocol for input quality scores.  Allowed values: illumina (ASCII 64-126)
    (equivalent to -J 64 -j -31) sanger   (ASCII 33-126) (equivalent to -J 33 -j 0)
    Default is sanger (no quality print shift) SAM output files should have quality
    scores in sanger protocol Or you can specify the print shift with this flag:'
  type: string
  inputBinding:
    prefix: --quality-protocol
- id: quality_print_shift
  doc: Shift FASTQ quality scores by this amount in output (default is 0 for sanger
    protocol; to change Illumina input to Sanger output, select -31)
  type: long
  inputBinding:
    prefix: --quality-print-shift
- id: map_dir
  doc: Map directory
  type: Directory
  inputBinding:
    prefix: --mapdir
- id: map
  doc: Map file.  If argument is '?' (with the quotes), this lists available map files.
  type: string
  inputBinding:
    prefix: --map
- id: map_exons
  doc: Map each exon separately
  type: boolean
  inputBinding:
    prefix: --mapexons
- id: map_both
  doc: Report hits from both strands of genome
  type: boolean
  inputBinding:
    prefix: --mapboth
- id: flanking
  doc: Show flanking hits (default 0)
  type: long
  inputBinding:
    prefix: --flanking
- id: print_comment
  doc: Show comment line for each hit
  type: boolean
  inputBinding:
    prefix: --print-comment
- id: no_lengths
  doc: No intron lengths in alignment
  type: boolean
  inputBinding:
    prefix: --nolengths
- id: invert_mode
  doc: "Mode for alignments to genomic (-) strand: 0=Don't invert the cDNA (default)\
    \ 1=Invert cDNA and print genomic (-) strand 2=Invert cDNA and print genomic (+)\
    \ strand"
  type: long
  inputBinding:
    prefix: --invertmode
- id: intron_gap
  doc: Nucleotides to show on each end of intron (default 3)
  type: long
  inputBinding:
    prefix: --introngap
- id: wrap_length
  doc: Wrap length for alignment (default 50)
  type: long
  inputBinding:
    prefix: --wraplength
- id: min_trimmed_coverage
  doc: Do not print alignments with trimmed coverage less this value (default=0.0,
    which means no filtering) Note that chimeric alignments will be output regardless
    of this filter
  type: double
  inputBinding:
    prefix: --min-trimmed-coverage
- id: min_identity
  doc: Do not print alignments with identity less this value (default=0.0, which means
    no filtering) Note that chimeric alignments will be output regardless of this
    filter
  type: double
  inputBinding:
    prefix: --min-identity
- id: check
  doc: Check compiler assumptions
  type: boolean
  inputBinding:
    prefix: --check
outputs: []
cwlVersion: v1.1
baseCommand:
- gmapl.sse42
