class: CommandLineTool
id: breseq.cwl
inputs:
- id: reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
- id: name
  doc: Human-readable name of the analysis run for output (DEFAULT=<none>)
  type: string
  inputBinding:
    prefix: --name
- id: num_processors
  doc: Number of processors to use in multithreaded steps (DEFAULT=1)
  type: string
  inputBinding:
    prefix: --num-processors
- id: output
  doc: Path to breseq output (DEFAULT=.)
  type: string
  inputBinding:
    prefix: --output
- id: polymorphism_prediction
  doc: The sample is not clonal. Predict polymorphic (mixed) mutations. Setting this
    flag changes from CONSENSUS MODE (the default) to POLYMORPHISM MODE
  type: boolean
  inputBinding:
    prefix: --polymorphism-prediction
- id: limit_fold_coverage
  doc: Analyze a subset of the input FASTQ sequencing reads with enough bases to provide
    this theoretical coverage of the reference sequences. A value between 60 and 120
    will usually speed up the analysis with no loss in sensitivity for clonal samples.
    The actual coverage achieved will be somewhat less because not all reads will
    map (DEFAULT=OFF)
  type: string
  inputBinding:
    prefix: --limit-fold-coverage
- id: aligned_sam
  doc: "Input files are aligned SAM files, rather than FASTQ files. Junction prediction\
    \ steps will be skipped. Be aware that breseq assumes: (1) Your SAM file is sorted\
    \ such that all alignments for a given read are on consecutive lines. You can\
    \ use 'samtools sort -n' if you are not sure that this is true for the output\
    \ of your alignment program. (2) You EITHER have alignment scores as additional\
    \ SAM fields with the form 'AS:i:n', where n is a positive integer and higher\
    \ values indicate a better alignment OR it defaults to calculating an alignment\
    \ score that is equal to the number of bases in the read minus the number of inserted\
    \ bases, deleted bases, and soft clipped bases in the alignment to the reference.\
    \ The default highly penalizes split-read matches (with CIGAR strings such as\
    \ M35D303M65)."
  type: boolean
  inputBinding:
    prefix: --aligned-sam
- id: read_min_length
  doc: Reads in the input FASTQ file that are shorter than this length will be ignored.
    (0 = OFF) (DEFAULT=18)
  type: string
  inputBinding:
    prefix: --read-min-length
- id: read_max_same_base_fraction
  doc: Reads in the input FASTQ file in which this fraction or more of the bases are
    the same will be ignored. (0 = OFF) (DEFAULT=0.9)
  type: string
  inputBinding:
    prefix: --read-max-same-base-fraction
- id: read_max_n_fraction
  doc: Reads in the input FASTQ file in which this fraction or more of the bases are
    uncalled as N will be ignored. (0 = OFF) (DEFAULT=0.5)
  type: string
  inputBinding:
    prefix: --read-max-N-fraction
- id: use_version_for_seq_id
  doc: If present, use the full VERSION in an input GenBank file (e.g., NC_001416.1)
    as the sequence ID instead of the LOCUS (e.g., NC_001416). You will need to use
    the converted reference file (data/reference.gff) for further breseq and gdtools
    operations on breseq output generated using this option.
  type: boolean
  inputBinding:
    prefix: --use-version-for-seq-id
- id: contig_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. The
    same coverage distribution will be fit to all of the reference sequences in this
    file simultaneously. This is appropriate when they are all contigs from a genome
    that should be present with the same copy number. Use of this option will improve
    performance when there are many contigs and especially when some are very short
    (≤1,000 bases). (DEFAULT=0)
  type: string
  inputBinding:
    prefix: --contig-reference
- id: junction_only_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. These
    references are only used for calling junctions with other reference sequences.
    An example of appropriate usage is including a transposon sequence not present
    in a reference genome. Option may be provided multiple times for multiple files.
    (DEFAULT=0)
  type: string
  inputBinding:
    prefix: --junction-only-reference
- id: targeted_sequencing
  doc: Reference sequences were targeted for ultra-deep sequencing (using pull-downs
    or amplicons). Do not fit coverage distribution.
  type: boolean
  inputBinding:
    prefix: --targeted-sequencing
- id: user_evidence_gd
  doc: User supplied Genome Diff file of JC and/or RA evidence items. The breseq output
    will report the support for these sequence changes even if they do not pass the
    normal filters for calling mutations in this sample.
  type: string
  inputBinding:
    prefix: --user-evidence-gd
- id: minimum_mapping_quality
  doc: Ignore alignments with less than this mapping quality (MQ) when calling mutations.
    MQ scores are equal to -10log10(P), where P is the probability that the best alignment
    is not to the correct location in the reference genome. The range of MQ scores
    returned by bowtie2 is 0 to 255. (DEFAULT=0)
  type: string
  inputBinding:
    prefix: --minimum-mapping-quality
- id: base_quality_cut_off
  doc: Ignore bases with quality scores lower than this value (DEFAULT=3)
  type: string
  inputBinding:
    prefix: --base-quality-cutoff
- id: quality_score_trim
  doc: Trim the ends of reads past any base with a quality score below --base-quality-score-cutoff.
  type: boolean
  inputBinding:
    prefix: --quality-score-trim
- id: require_match_length
  doc: Only consider alignments that cover this many bases of a read (DEFAULT=0)
  type: string
  inputBinding:
    prefix: --require-match-length
- id: require_match_fraction
  doc: Only consider alignments that cover this fraction of a read (DEFAULT=0.9)
  type: string
  inputBinding:
    prefix: --require-match-fraction
- id: maximum_read_mismatches
  doc: Don't consider reads with this many or more bases or indels that are different
    from the reference sequence. Unaligned bases at the end of a read also count as
    mismatches. Unaligned bases at the beginning of the read do NOT count as mismatches.
    (DEFAULT=OFF)
  type: string
  inputBinding:
    prefix: --maximum-read-mismatches
- id: deletion_coverage_propagation_cut_off
  doc: Value for coverage above which deletions are cutoff. 0 = calculated from coverage
    distribution (DEFAULT=0)
  type: string
  inputBinding:
    prefix: --deletion-coverage-propagation-cutoff
- id: deletion_coverage_seed_cut_off
  doc: Value for coverage below which deletions are seeded (DEFAULT=0)
  type: string
  inputBinding:
    prefix: --deletion-coverage-seed-cutoff
- id: bowtie2_scoring
  doc: All calls to bowtie2 must use the same commands for assigning scores to read
    alignments. Larger scores are assumed to be better by breseq. Each call to bowtie2
    has this option added to its command line. (DEFAULT="--ma 1 --mp 3 --np 0 --rdg
    2,3 --rfg 2,3 --ignore-quals")
  type: string
  inputBinding:
    prefix: --bowtie2-scoring
- id: bowtie2_stage_1
  doc: Settings for mapping criteria used for the stage 1 alignment. This step is
    normally meant for quickly aligning near-perfect matches. (DEFAULT="--local -i
    S,1,0.25 --score-min L,1,0.9 -k 2000")
  type: string
  inputBinding:
    prefix: --bowtie2-stage1
- id: bowtie2_stage_2
  doc: Settings for mapping criteria used for the stage 2 alignment. If set to the
    empty string "", then stage 2 alignment is skipped. This step is normally meant
    for exhaustively mapping reads that were unmapped by stage 1. (DEFAULT="--local
    -i S,1,0.25 --score-min L,6,0.2 -k 2000")
  type: string
  inputBinding:
    prefix: --bowtie2-stage2
- id: bowtie2_junction
  doc: Settings for mapping criteria used in aligning reads to candidate junctions.
    (DEFAULT="--local -i S,1,0.25 --score-min L,1,0.70 -k 2000")
  type: string
  inputBinding:
    prefix: --bowtie2-junction
- id: no_junction_prediction
  doc: Do not predict new sequence junctions
  type: boolean
  inputBinding:
    prefix: --no-junction-prediction
- id: junction_in_del_split_length
  doc: Split read alignments on indels of this many or more bases. Indel mutations
    of this length or longer will be predicted by JC evidence and those that are shorter
    will be predicted from RA evience (DEFAULT=3)
  type: string
  inputBinding:
    prefix: --junction-indel-split-length
- id: junction_alignment_pair_limit
  doc: Only consider this many passed alignment pairs when creating candidate junction
    sequences (0 = DO NOT LIMIT) (DEFAULT=100000)
  type: string
  inputBinding:
    prefix: --junction-alignment-pair-limit
- id: junction_minimum_candidates
  doc: Test at least this many of the top-scoring junction candidates, regardless
    of their length (DEFAULT=100)
  type: string
  inputBinding:
    prefix: --junction-minimum-candidates
- id: junction_maximum_candidates
  doc: Test no more than this many of the top-scoring junction candidates (0 = DO
    NOT LIMIT) (DEFAULT=5000)
  type: string
  inputBinding:
    prefix: --junction-maximum-candidates
- id: junction_candidate_length_factor
  doc: Accept top-scoring junction candidates to test until their cumulative length
    is this factor times the total reference sequence length (0 = DO NOT LIMIT) (DEFAULT=0.1)
  type: string
  inputBinding:
    prefix: --junction-candidate-length-factor
- id: junction_minimum_candidate_pos_hash_score
  doc: Minimum number of distinct spanning read start positions required to create
    a junction candidate for further testing (DEFAULT=2)
  type: string
  inputBinding:
    prefix: --junction-minimum-candidate-pos-hash-score
- id: junction_score_cut_off
  doc: Maximum negative log10 probability of uneven coverage across a junction breakpoint
    to accept (0 = OFF) (DEFAULT=3.0)
  type: string
  inputBinding:
    prefix: --junction-score-cutoff
- id: junction_minimum_pos_hash_score
  doc: Minimum number of distinct spanning read start positions required to accept
    a junction (DEFAULT = consensus mode, 3; polymorphism mode, 3)
  type: string
  inputBinding:
    prefix: --junction-minimum-pos-hash-score
- id: junction_minimum_side_match
  doc: Minimum number of bases a read must extend past any overlap or read-only sequence
    at the breakpoint of a junction on each side to count as support for the junction
    (DEFAULT = consensus mode, 1; polymorphism mode, 6)
  type: string
  inputBinding:
    prefix: --junction-minimum-side-match
- id: junction_minimum_pr_no_read_start_per_position
  doc: Minimum probablilty assigned that no mapped read will start at a given position
    and strand for junction prediction (DEFAULT=0.1)
  type: string
  inputBinding:
    prefix: --junction-minimum-pr-no-read-start-per-position
- id: junction_allow_suboptimal_matches
  doc: Assign a read to the junction candidate with the most overall support as long
    as its match to this junction is better than to any location in the reference
    sequence, even if it matches a different junction candidate better. This behavior
    was the default before v0.35.0. It will align more reads to junctions but risks
    misassigning some reads to the wrong junction candidates. It is only recommended
    that you use this option in CONSENSUS mode
  type: boolean
  inputBinding:
    prefix: --junction-allow-suboptimal-matches
- id: consensus_score_cut_off
  doc: Log10 E-value cutoff for consensus base substitutions and small indels (DEFAULT
    = 10)
  type: string
  inputBinding:
    prefix: --consensus-score-cutoff
- id: consensus_frequency_cut_off
  doc: Only predict consensus mutations when the variant allele frequency is above
    this value. (DEFAULT = consensus mode, 0.8; polymorphism mode, 0.8)
  type: string
  inputBinding:
    prefix: --consensus-frequency-cutoff
- id: consensus_minimum_variant_coverage
  doc: Only predict consensus mutations when at least this many reads support the
    mutation. (DEFAULT = consensus mode, 0; polymorphism mode, 0)
  type: string
  inputBinding:
    prefix: --consensus-minimum-variant-coverage
- id: consensus_minimum_total_coverage
  doc: Only predict consensus mutations when at least this many reads total are aligned
    to a genome position. (DEFAULT = consensus mode, 0; polymorphism mode, 0)
  type: string
  inputBinding:
    prefix: --consensus-minimum-total-coverage
- id: consensus_minimum_variant_coverage_each_strand
  doc: Only predict consensus mutations when at least this many reads on each strand
    support the mutation. (DEFAULT = consensus mode, 0; polymorphism mode, 0)
  type: string
  inputBinding:
    prefix: --consensus-minimum-variant-coverage-each-strand
- id: consensus_minimum_total_coverage_each_strand
  doc: Only predict consensus mutations when at least this many reads on each strand
    are aligned to a genome position. (DEFAULT = consensus mode, 0; polymorphism mode,
    0)
  type: string
  inputBinding:
    prefix: --consensus-minimum-total-coverage-each-strand
- id: consensus_reject_in_del_homopolymer_length
  doc: 'Reject insertion/deletion polymorphisms which could result from expansion/contraction
    of homopolymer repeats with this length or greater in the reference genome (0
    = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode, OFF) '
  type: string
  inputBinding:
    prefix: --consensus-reject-indel-homopolymer-length
- id: consensus_reject_surrounding_homopolymer_length
  doc: Reject polymorphic base substitutions that create a homopolymer with this many
    or more of one base in a row. The homopolymer must begin and end after the changed
    base. For example, TATTT->TTTTT would be rejected with a setting of 5, but ATTTT->TTTTT
    would not. (0 = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode, OFF)
  type: string
  inputBinding:
    prefix: --consensus-reject-surrounding-homopolymer-length
- id: polymorphism_score_cut_off
  doc: Log10 E-value cutoff for test of polymorphism vs no polymorphism (DEFAULT =
    consensus mode, 10; polymorphism mode, 2)
  type: string
  inputBinding:
    prefix: --polymorphism-score-cutoff
- id: polymorphism_frequency_cut_off
  doc: Only predict polymorphisms when the minor variant allele frequency is greater
    than this value. For example, a setting of 0.05 will reject all polymorphisms
    with a non-reference frequency of <0.05, and any variants with a non-reference
    frequency of ≥ 0.95 (which is 1 - 0.05) will be rejected as polymorphisms and
    instead predicted to be consensus mutations (DEFAULT = consensus mode, 0.2; polymorphism
    mode, 0.05)
  type: string
  inputBinding:
    prefix: --polymorphism-frequency-cutoff
- id: polymorphism_minimum_variant_coverage
  doc: Only predict polymorphisms when at least this many reads support each alternative
    allele. (DEFAULT = consensus mode, 0; polymorphism mode, 0)
  type: string
  inputBinding:
    prefix: --polymorphism-minimum-variant-coverage
- id: polymorphism_minimum_total_coverage
  doc: Only predict polymorphisms when at least this many reads total are aligned
    to a genome position. (DEFAULT = consensus mode, 0; polymorphism mode, 0)
  type: string
  inputBinding:
    prefix: --polymorphism-minimum-total-coverage
- id: polymorphism_minimum_variant_coverage_each_strand
  doc: Only predict polymorphisms when at least this many reads on each strand support
    each alternative allele. (DEFAULT = consensus mode, 0; polymorphism mode, 2)
  type: string
  inputBinding:
    prefix: --polymorphism-minimum-variant-coverage-each-strand
- id: polymorphism_minimum_total_coverage_each_strand
  doc: Only predict polymorphisms when at least this many reads on each strand are
    aligned to a genome position. (DEFAULT = consensus mode, 0; polymorphism mode,
    0)
  type: string
  inputBinding:
    prefix: --polymorphism-minimum-total-coverage-each-strand
- id: polymorphism_bias_cut_off
  doc: P-value criterion for Fisher's exact test for strand bias AND K-S test for
    quality score bias. (0 = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode,
    OFF)
  type: string
  inputBinding:
    prefix: --polymorphism-bias-cutoff
- id: polymorphism_no_indels
  doc: Do not predict insertion/deletion polymorphisms from read alignment evidence
  type: boolean
  inputBinding:
    prefix: --polymorphism-no-indels
- id: polymorphism_reject_in_del_homopolymer_length
  doc: 'Reject insertion/deletion polymorphisms which could result from expansion/contraction
    of homopolymer repeats with this length or greater in the reference genome (0
    = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode, 3) '
  type: string
  inputBinding:
    prefix: --polymorphism-reject-indel-homopolymer-length
- id: polymorphism_reject_surrounding_homopolymer_length
  doc: Reject polymorphic base substitutions that create a homopolymer with this many
    or more of one base in a row. The homopolymer must begin and end after the changed
    base. For example, TATTT->TTTTT would be rejected with a setting of 5, but ATTTT->TTTTT
    would not. (0 = OFF) (DEFAULT = consensus mode, OFF; polymorphism mode, 5)
  type: string
  inputBinding:
    prefix: --polymorphism-reject-surrounding-homopolymer-length
- id: max_displayed_reads
  doc: Maximum number of reads to display in the HTML output for an evidence item
    (DEFAULT=100)
  type: string
  inputBinding:
    prefix: --max-displayed-reads
- id: brief_html_output
  doc: Don't create detailed output files for evidence (no read alignments or coverage
    plots)
  type: boolean
  inputBinding:
    prefix: --brief-html-output
- id: header_genome_diff
  doc: Include header information from this GenomeDiff file in output.gd
  type: string
  inputBinding:
    prefix: --header-genome-diff
- id: no_javascript
  doc: Don't include javascript in the HTML output
  type: boolean
  inputBinding:
    prefix: --no-javascript
- id: skip_ra_mc_prediction
  doc: Skip generating read alignment and missing coverage evidence.
  type: boolean
  inputBinding:
    prefix: --skip-RA-MC-prediction
- id: skip_jc_prediction
  doc: Skip generating new junction evidence.
  type: boolean
  inputBinding:
    prefix: --skip-JC-prediction
- id: skip_mc_prediction
  doc: Skip generating missing coverage evidence.
  type: boolean
  inputBinding:
    prefix: --skip-MC-prediction
- id: keep_intermediates
  doc: Do not delete intermediate files.
  type: boolean
  inputBinding:
    prefix: --keep-intermediates
- id: per_position_file
  doc: Create additional file of per-position aligned bases
  type: boolean
  inputBinding:
    prefix: --per-position-file
- id: junction_debug
  doc: Output additional junction debugging files
  type: boolean
  inputBinding:
    prefix: --junction-debug
- id: cnv
  doc: Do experimental copy number variation prediction
  type: boolean
  inputBinding:
    prefix: --cnv
- id: cnv_tile_size
  doc: Tile size for copy number variation prediction (DEFAULT=500)
  type: string
  inputBinding:
    prefix: --cnv-tile-size
- id: cnv_ignore_redundant
  doc: Only consider non-redundant coverage when using cnv
  type: boolean
  inputBinding:
    prefix: --cnv-ignore-redundant
outputs: []
cwlVersion: v1.1
baseCommand:
- breseq
