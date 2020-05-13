class: CommandLineTool
id: erne_meth.cwl
inputs:
- id: fast_a
  doc: reference fasta file (can be repeated several  time). [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta
- id: input
  doc: BAM/SAM file generated with erne-bs5 [REQUIRED]
  type: string
  inputBinding:
    prefix: --input
- id: output_prefix
  doc: prefix for output files (methylation analysis,  reports). [REQUIRED]
  type: string
  inputBinding:
    prefix: --output-prefix
- id: annotations_erne
  doc: 'Generate methylation annotations in erne  format. Format is: <chr> <position>
    <strand>  <context> <#C+#T> <methyl_level> <mult_reads>,  where methyl_level =
    #C/(#C+#T) (or NA if  #C+#T=0) and mult_reads is the number of  multiple reads
    disambiguated that cover the  position (only if --disambiguation-mode is  specified,
    NA otherwise). Coordinates are  1-based. Default: disabled.'
  type: boolean
  inputBinding:
    prefix: --annotations-erne
- id: annotations_bismark
  doc: 'Generate methylation annotations in bismark  cytosine format. Format is: <chr>
    <position>  <strand> <#C> <#T> <context> <detailed  context>, where <position>
    for - strand (Gs on  + strand) is computed as position of the  corresponding G
    on + strand minus context  length plus one (context length = 2 for CG and  3 for
    CHG/CHH). Context is one of CG/CHG/CHH,  while detailed context is the exact 3
    bases of  the context. Coordinates are 1-based. Default:  disabled.'
  type: boolean
  inputBinding:
    prefix: --annotations-bismark
- id: annotations_epp
  doc: "Generate methylation annotations in the format  as output files from the Epigenome\
    \ Processing  Pipeline (EPP) applied at the Broad Institute.  Format is (tab separated):\
    \ <chr name> <start  context(included)> <end context(excluded)>  <methylation\
    \ value and coverage as a string (  '#C/(#T+#C)', '0/0' if not covered )>  <methylation\
    \ in range [0,1000]> <strand>  <context(CG/CHG/CHH)>. Coordinates are 0-based.\
    \ Default: disabled."
  type: boolean
  inputBinding:
    prefix: --annotations-epp
- id: compress
  doc: 'Compress methylation annotations in the  specified format (example: --compress
    bz).  Default: do not compress.'
  type: string
  inputBinding:
    prefix: --compress
- id: write_bam
  doc: write used alignments in a bam file. The bam  file is called 'output_prefix_alignments_used.b
    am', where output_prefix is the prefix  specified with --output-prefix.
  type: boolean
  inputBinding:
    prefix: --write-bam
- id: target
  doc: input bed file with targeted regions in the  format chr start_pos(included)  end_pos(excluded).
    If specified, ERNE-METH will produce also target statistics and three output files
    with extension _on_target.txt,  _off_target.txt and _out_target_cov_distributio
    n.txt containing informations about % of  covered bases on target having a given
    minimum  coverage, number of covered bases off target  having a given minimum
    coverage, and a list of  triples <distance_from_target, coverage,  number_of_positions>
    respectively. Here,  distance_from_target is the distance from the  nearest target
    region, coverage is the coverage of that position and number_of_positions is the
    number of positions having that coverage and  distance_from_target.
  type: string
  inputBinding:
    prefix: --target
- id: extend_target
  doc: 'Extend boundaries of the targeted regions by  arg positions (on both sides).
    Useful to take  into account tails of aligned reads at the  extremities of targeted
    regions while computing statistics. Default: 0.'
  type: string
  inputBinding:
    prefix: --extend-target
- id: on_target_annotations
  doc: 'In the annotations file print only on-target  positions (included extended
    positions, see  --extend-target). Default: false (print all  positions).'
  type: boolean
  inputBinding:
    prefix: --on-target-annotations
- id: print_only_covered
  doc: 'In the annotations file print only covered  positions. Default: false (print
    all  cytosines).'
  type: boolean
  inputBinding:
    prefix: --print-only-covered
- id: single_mode
  doc: 'Modality 1: Use only single-mapping reads. This modality is incompatible with
    --multiple-mode.  Default: enabled.'
  type: boolean
  inputBinding:
    prefix: --single-mode
- id: multiple_mode
  doc: 'Modality 2: With paired end, if one mate is  single and the other multiple,
    use the primary  alignment for the multiple-mapping read.  Default: disabled'
  type: boolean
  inputBinding:
    prefix: --multiple-mode
- id: disambiguation_mode
  doc: 'Modality 3: Use methylation information to  disambiguate multiple-mapping
    reads. WARNING:  can be used only on bam files produced with the option --print-all
    and single-end reads.  Default: disabled.'
  type: boolean
  inputBinding:
    prefix: --disambiguation-mode
- id: use_first
  doc: 'Use only the first arg alignments (or pairs if  paired-end) in the input file.
    If set to 0, use all alignments. Default: 0.'
  type: string
  inputBinding:
    prefix: --use-first
- id: de_duplicate
  doc: 'Automatically remove PCR duplicates while  calling methylation. An alignment
    is considered duplicate if another alignment with same  chromosome, starting position
    and orientation  has already been processed. Given a set of  duplicates, only
    the first N appearing in the  input file will be used for the methylation  call,
    where N is specified with the option  --allowed-duplicates. For paired-end reads,
    a  pair is considered duplicate if and only if  another pair with same chromosome,
    starting  position and orientation (for both reads) has  been aligned before.
    Default: false. '
  type: boolean
  inputBinding:
    prefix: --deduplicate
- id: allowed_duplicates
  doc: 'If --deduplicate is specified, keep the first  arg duplicate alignments for
    a read/pair (in  the order seen in the bam file). Default: 1.'
  type: string
  inputBinding:
    prefix: --allowed-duplicates
- id: disable_un_proper_pair
  doc: 'With paired end reads, discard unproper pairs  (alignments on different strand/chromosome).  Unproper
    pairs could reflect structural  variations. Default: disabled (accept unproper  pairs). '
  type: boolean
  inputBinding:
    prefix: --disable-unproper-pair
- id: max_coverage
  doc: 'Do not increment Cytosine coverage counters if  coverage of a Cytosine is
    > arg. Can be used to normalize read depth across multiple samples.  Default:
    2^16-1.'
  type: string
  inputBinding:
    prefix: --max-coverage
- id: coverage_threshold
  doc: 'If the coverage of a cytosine in the reference  is < arg then it is considered
    as not covered.  Default: 1.'
  type: string
  inputBinding:
    prefix: --coverage-threshold
- id: error_threshold
  doc: '(only with --disambiguation-mode) use an  alignment for the methylation pattern
    extension only if its average methylation distance per  cytosine is less or equal
    this value in %.  Default: 100.'
  type: string
  inputBinding:
    prefix: --error-threshold
- id: delta_m
  doc: '(only with --disambiguation-mode) During  disambiguation phase if there are
    multiple  alignments for a read then extend the  methylation profile with the
    best one ONLY if  its methylation distance is at least by arg  smaller than the
    second best one. High values  guarantee higher reliability. Default: 0.'
  type: string
  inputBinding:
    prefix: --delta-m
- id: min_c_cov
  doc: '(only with --disambiguation-mode) Lower bound  for the minimum number of cytosines
    in an  alignment that must be covered by the  methylation pattern to process the
    alignment.  When C_cov reaches this value, the algorithm is terminated. Default:
    10.'
  type: string
  inputBinding:
    prefix: --min-C-cov
- id: max_c_cov
  doc: '(only with --disambiguation-mode) Upper bound  for the minimum number of cytosines
    in an  alignment that must be covered by the  methylation pattern to process the
    alignment.  This is the starting value for C_cov. Default:  20.'
  type: string
  inputBinding:
    prefix: --max-C-cov
- id: aligned_reads_thr
  doc: '(only with --disambiguation-mode) If during a  cycle less or equal than arg
    reads have been  disambiguated then decrement C_cov. Default: 10'
  type: string
  inputBinding:
    prefix: --aligned-reads-thr
- id: contamination_reference
  doc: reference file to use for contamination check  (in ERNE format)
  type: string
  inputBinding:
    prefix: --contamination-reference
outputs: []
cwlVersion: v1.1
baseCommand:
- erne-meth
