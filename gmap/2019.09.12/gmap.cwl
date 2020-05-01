#!/usr/bin/env cwl-runner

baseCommand:
- gmap.sse42
class: CommandLineTool
cwlVersion: v1.0
id: gmap.sse42
inputs:
- doc: ',STRING        Align these two sequences provided on the command line, first
    one being genomic and second one being cDNA'
  id: cmdline
  inputBinding:
    prefix: --cmdline
  type: string
- doc: /INT             Process only the i-th out of every n sequences e.g., 0/100
    or 99/100 (useful for distributing jobs to a computer farm).
  id: part
  inputBinding:
    prefix: --part
  type: long
- doc: Size of input buffer (program reads this many sequences at a time for efficiency)
    (default 1000)
  id: input_buffer_size
  inputBinding:
    prefix: --input-buffer-size
  type: long
- doc: Turns off splicing (useful for aligning genomic sequences onto a genome)
  id: no_splicing
  inputBinding:
    prefix: --nosplicing
  type: boolean
- doc: Min length for one internal intron (default 9).  Below this size, a genomic
    gap will be considered a deletion rather than an intron.
  id: min_intron_length
  inputBinding:
    prefix: --min-intronlength
  type: long
- doc: 'Max length for one internal intron (default 500000).  Note: for backward compatibility,
    the -K or --intronlength flag will set both --max-intronlength-middle and --max-intronlength-ends.
    Also see --split-large-introns below.'
  id: max_intron_length_middle
  inputBinding:
    prefix: --max-intronlength-middle
  type: long
- doc: 'Max length for first or last intron (default 10000).  Note: for backward compatibility,
    the -K or --intronlength flag will set both --max-intronlength-middle and --max-intronlength-ends.'
  id: max_intron_length_ends
  inputBinding:
    prefix: --max-intronlength-ends
  type: long
- doc: Sometimes GMAP will exceed the value for --max-intronlength-middle, if it finds
    a good single alignment.  However, you can force GMAP to split such alignments
    by using this flag
  id: split_large_introns
  inputBinding:
    prefix: --split-large-introns
  type: boolean
- doc: Trim end exons with fewer than given number of matches (in nt, default 12)
  id: trim_end_exons
  inputBinding:
    prefix: --trim-end-exons
  type: long
- doc: Max length for known splice sites at ends of sequence (default 2000000)
  id: local_splice_dist
  inputBinding:
    prefix: --localsplicedist
  type: long
- doc: Max total intron length (default 2400000)
  id: total_length
  inputBinding:
    prefix: --totallength
  type: long
- doc: Amount of unaligned sequence that triggers search for the remaining sequence
    (default 30). Enables alignment of chimeric reads, and may help with some non-chimeric
    reads.  To turn off, set to zero.
  id: chimera_margin
  inputBinding:
    prefix: --chimera-margin
  type: long
- doc: Turns off finding of chimeras.  Same effect as --chimera-margin=0
  id: no_chimeras
  inputBinding:
    prefix: --no-chimeras
  type: boolean
- doc: Number of worker threads
  id: n_threads
  inputBinding:
    prefix: --nthreads
  type: long
- doc: Limit search to given chromosome
  id: chr_subset
  inputBinding:
    prefix: --chrsubset
  type: string
- doc: cDNA direction (sense_force, antisense_force, sense_filter, antisense_filter,or
    auto (default))
  id: direction
  inputBinding:
    prefix: --direction
  type: string
- doc: Reward for canonical and semi-canonical introns 0=low reward, 1=high reward
    (default), 2=low reward for high-identity sequences and high reward otherwise
  id: canonical_mode
  inputBinding:
    prefix: --canonical-mode
  type: long
- doc: Use a more sensitive search for canonical splicing, which helps especially
    for cross-species alignments and other difficult cases
  id: cross_species
  inputBinding:
    prefix: --cross-species
  type: boolean
- doc: Allow an insertion and deletion close to each other (0=no, 1=yes (default),
    2=only for high-quality alignments)
  id: allow_close_indels
  inputBinding:
    prefix: --allow-close-indels
  type: long
- doc: Allow microexons only if one of the splice site probabilities is greater than
    this value (default 0.95)
  id: micro_exon_splice_prob
  inputBinding:
    prefix: --microexon-spliceprob
  type: double
- doc: Directory for methylcytosine index files (created using cmetindex) (default
    is location of genome index files specified using -D, -V, and -d)
  id: c_met_dir
  inputBinding:
    prefix: --cmetdir
  type: string
- doc: Directory for A-to-I RNA editing index files (created using atoiindex) (default
    is location of genome index files specified using -D, -V, and -d)
  id: atoi_dir
  inputBinding:
    prefix: --atoidir
  type: string
- doc: 'Alignment mode: standard (default), cmet-stranded, cmet-nonstranded, atoi-stranded,
    atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded. Non-standard modes requires
    you to have previously run the cmetindex or atoiindex programs (which also cover
    the ttoc modes) on the genome'
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: 'Pruning level: 0=no pruning (default), 1=poor seqs, 2=repetitive seqs, 3=poor
    and repetitive'
  id: prune_level
  inputBinding:
    prefix: --prunelevel
  type: boolean
- doc: Print output in compressed format
  id: compress
  inputBinding:
    prefix: --compress
  type: boolean
- doc: Print exons ("cdna" or "genomic")
  id: exons
  inputBinding:
    prefix: --exons
  type: string
- doc: Print protein sequence (cDNA)
  id: protein_dna
  inputBinding:
    prefix: --protein_dna
  type: boolean
- doc: Print protein sequence (genomic)
  id: protein_gen
  inputBinding:
    prefix: --protein_gen
  type: boolean
- doc: 'Other format for output (also note the -A and -S options and other options
    listed under Output types): psl (or 1) = PSL (BLAT) format, gff3_gene (or 2) =
    GFF3 gene format, gff3_match_cdna (or 3) = GFF3 cDNA_match format, gff3_match_est
    (or 4) = GFF3 EST_match format, splicesites (or 6) = splicesites output (for GSNAP
    splicing file), introns = introns output (for GSNAP splicing file), map_exons
    (or 7) = IIT FASTA exon map format, map_ranges (or 8) = IIT FASTA range map format,
    coords (or 9) = coords in table format, sampe = SAM format (setting paired_read
    bit in flag), samse = SAM format (without setting paired_read bit), bedpe = indels
    and gaps in BEDPE format'
  id: format
  inputBinding:
    prefix: --format
  type: long
- doc: Overlap to show, if any, at chimera breakpoint
  id: chimera_overlap
  inputBinding:
    prefix: --chimera-overlap
  type: boolean
- doc: Print only failed alignments, those with no results
  id: fails_only
  inputBinding:
    prefix: --failsonly
  type: boolean
- doc: Exclude printing of failed alignments
  id: no_fails
  inputBinding:
    prefix: --nofails
  type: boolean
- doc: Directory for SNPs index files (created using snpindex) (default is location
    of genome index files specified using -D and -d)
  id: snps_dir
  inputBinding:
    prefix: --snpsdir
  type: string
- doc: Use database containing known SNPs (in <STRING>.iit, built previously using
    snpindex) for tolerance to SNPs
  id: use_snps
  inputBinding:
    prefix: --use-snps
  type: string
- doc: Basename for multiple-file output, separately for nomapping, uniq, mult, (and
    chimera, if --chimera-margin is selected)
  id: split_output
  inputBinding:
    prefix: --split-output
  type: string
- doc: Print completely failed alignments as input FASTA or FASTQ format to the given
    file.  If the --split-output flag is also given, this file is generated in addition
    to the output in the .nomapping file.
  id: failed_input
  inputBinding:
    prefix: --failed-input
  type: string
- doc: When --split-output or --failedinput is given, this flag will append output
    to the existing files.  Otherwise, the default is to create new files.
  id: append_output
  inputBinding:
    prefix: --append-output
  type: boolean
- doc: Buffer size, in queries, for output thread (default 1000).  When the number
    of results to be printed exceeds this size, the worker threads are halted until
    the backlog is cleared
  id: output_buffer_size
  inputBinding:
    prefix: --output-buffer-size
  type: long
- doc: Genetic code used for translating codons to amino acids and computing CDS Integer
    value (default=1) corresponds to an available code at http://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi
  id: translation_code
  inputBinding:
    prefix: --translation-code
  type: long
- doc: Also, use the alternate initiation codons shown in the above Web site By default,
    without this option, only ATG is considered an initiation codon
  id: alt_start_codons
  inputBinding:
    prefix: --alt-start-codons
  type: boolean
- doc: Assume full-length protein, starting with Met
  id: full_length
  inputBinding:
    prefix: --fulllength
  type: boolean
- doc: Translate codons from given nucleotide (1-based)
  id: cds_start
  inputBinding:
    prefix: --cdsstart
  type: long
- doc: Truncate alignment around full-length protein, Met to Stop Implies -F flag.
  id: truncate
  inputBinding:
    prefix: --truncate
  type: boolean
- doc: Translates cDNA with corrections for frameshifts
  id: tolerant
  inputBinding:
    prefix: --tolerant
  type: boolean
- doc: 'Whether to add a ### separator after each query sequence Values: 0 (no), 1
    (yes, default)'
  id: gff3_add_separators
  inputBinding:
    prefix: --gff3-add-separators
  type: long
- doc: 'Whether to swap phase (0 => 0, 1 => 2, 2 => 1) in gff3_gene format Needed
    by some analysis programs, but deviates from GFF3 specification Values: 0 (no,
    default), 1 (yes)'
  id: gff3_swap_phase
  inputBinding:
    prefix: --gff3-swap-phase
  type: long
- doc: 'Whether to use cDNA or genomic translation for the CDS coordinates Values:
    cdna (default), genomic'
  id: gff3_cds
  inputBinding:
    prefix: --gff3-cds
  type: string
- doc: Do not print headers beginning with '@'
  id: no_sam_headers
  inputBinding:
    prefix: --no-sam-headers
  type: boolean
- doc: Insert 0M in CIGAR between adjacent insertions and deletions Required by Picard,
    but can cause errors in other tools
  id: sam_use_0m
  inputBinding:
    prefix: --sam-use-0M
  type: boolean
- doc: Use extended CIGAR format (using X and = symbols instead of M, to indicate
    matches and mismatches, respectively
  id: sam_extended_cigar
  inputBinding:
    prefix: --sam-extended-cigar
  type: boolean
- doc: For RNA-Seq alignments, disallows XS:A:? when the sense direction is unclear,
    and replaces this value arbitrarily with XS:A:+. May be useful for some programs,
    such as Cufflinks, that cannot handle XS:A:?.  However, if you use this flag,
    the reported value of XS:A:+ in these cases will not be meaningful.
  id: force_xs_dir
  inputBinding:
    prefix: --force-xs-dir
  type: boolean
- doc: In MD string, when known SNPs are given by the -v flag, prints difference nucleotides
    as lower-case when they, differ from reference but match a known alternate allele
  id: md_lowercase_snp
  inputBinding:
    prefix: --md-lowercase-snp
  type: boolean
- doc: 'Action to take if there is a disagreement between CIGAR length and sequence
    length Allowed values: ignore, warning (default), noprint, abort Note that the
    noprint option does not print the CIGAR string at all if there is an error, so
    it may break a SAM parser'
  id: action_if_cigar_error
  inputBinding:
    prefix: --action-if-cigar-error
  type: boolean
- doc: Value to put into read-group id (RG-ID) field
  id: read_group_id
  inputBinding:
    prefix: --read-group-id
  type: string
- doc: Value to put into read-group name (RG-SM) field
  id: read_group_name
  inputBinding:
    prefix: --read-group-name
  type: string
- doc: Value to put into read-group library (RG-LB) field
  id: read_group_library
  inputBinding:
    prefix: --read-group-library
  type: string
- doc: Value to put into read-group library (RG-PL) field
  id: read_group_platform
  inputBinding:
    prefix: --read-group-platform
  type: string
- doc: 'Protocol for input quality scores.  Allowed values: illumina (ASCII 64-126)
    (equivalent to -J 64 -j -31) sanger   (ASCII 33-126) (equivalent to -J 33 -j 0)
    Default is sanger (no quality print shift) SAM output files should have quality
    scores in sanger protocol Or you can specify the print shift with this flag:'
  id: quality_protocol
  inputBinding:
    prefix: --quality-protocol
  type: string
- doc: Shift FASTQ quality scores by this amount in output (default is 0 for sanger
    protocol; to change Illumina input to Sanger output, select -31)
  id: quality_print_shift
  inputBinding:
    prefix: --quality-print-shift
  type: long
- doc: Map directory
  id: map_dir
  inputBinding:
    prefix: --mapdir
  type: Directory
- doc: Map file.  If argument is '?' (with the quotes), this lists available map files.
  id: map
  inputBinding:
    prefix: --map
  type: string
- doc: Map each exon separately
  id: map_exons
  inputBinding:
    prefix: --mapexons
  type: boolean
- doc: Report hits from both strands of genome
  id: map_both
  inputBinding:
    prefix: --mapboth
  type: boolean
- doc: Show flanking hits (default 0)
  id: flanking
  inputBinding:
    prefix: --flanking
  type: long
- doc: Show comment line for each hit
  id: print_comment
  inputBinding:
    prefix: --print-comment
  type: boolean
- doc: No intron lengths in alignment
  id: no_lengths
  inputBinding:
    prefix: --nolengths
  type: boolean
- doc: "Mode for alignments to genomic (-) strand: 0=Don't invert the cDNA (default)\
    \ 1=Invert cDNA and print genomic (-) strand 2=Invert cDNA and print genomic (+)\
    \ strand"
  id: invert_mode
  inputBinding:
    prefix: --invertmode
  type: long
- doc: Nucleotides to show on each end of intron (default 3)
  id: intron_gap
  inputBinding:
    prefix: --introngap
  type: long
- doc: Wrap length for alignment (default 50)
  id: wrap_length
  inputBinding:
    prefix: --wraplength
  type: long
- doc: Do not print alignments with trimmed coverage less this value (default=0.0,
    which means no filtering) Note that chimeric alignments will be output regardless
    of this filter
  id: min_trimmed_coverage
  inputBinding:
    prefix: --min-trimmed-coverage
  type: double
- doc: Do not print alignments with identity less this value (default=0.0, which means
    no filtering) Note that chimeric alignments will be output regardless of this
    filter
  id: min_identity
  inputBinding:
    prefix: --min-identity
  type: double
- doc: Check compiler assumptions
  id: check
  inputBinding:
    prefix: --check
  type: boolean
