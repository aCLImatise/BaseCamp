class: CommandLineTool
id: hisat2.cwl
inputs:
- id: phred33
  doc: qualities are Phred+33 (default)
  type: boolean
  inputBinding:
    prefix: --phred33
- id: phred64
  doc: qualities are Phred+64
  type: boolean
  inputBinding:
    prefix: --phred64
- id: int_quals
  doc: qualities encoded as space-delimited integers
  type: boolean
  inputBinding:
    prefix: --int-quals
- id: fast
  doc: --no-repeat-index
  type: boolean
  inputBinding:
    prefix: --fast
- id: sensitive
  doc: --bowtie2-dp 1 -k 30 --score-min L,0,-0.5
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: very_sensitive
  doc: --bowtie2-dp 2 -k 50 --score-min L,0,-1
  type: boolean
  inputBinding:
    prefix: --very-sensitive
- id: bowtie2_dp
  doc: "use Bowtie2's dynamic programming alignment algorithm (0) - 0: no dynamic\
    \ programming, 1: conditional dynamic programming, and 2: unconditional dynamic\
    \ programming (slowest)"
  type: long
  inputBinding:
    prefix: --bowtie2-dp
- id: n_ceil
  doc: 'func for max # non-A/C/G/Ts permitted in aln (L,0,0.15)'
  type: string
  inputBinding:
    prefix: --n-ceil
- id: ignore_quals
  doc: treat all quality values as 30 on Phred scale (off)
  type: boolean
  inputBinding:
    prefix: --ignore-quals
- id: no_fw
  doc: do not align forward (original) version of read (off)
  type: boolean
  inputBinding:
    prefix: --nofw
- id: norc
  doc: do not align reverse-complement version of read (off)
  type: boolean
  inputBinding:
    prefix: --norc
- id: no_repeat_index
  doc: do not use repeat index
  type: boolean
  inputBinding:
    prefix: --no-repeat-index
- id: pen_can_splice
  doc: penalty for a canonical splice site (0)
  type: long
  inputBinding:
    prefix: --pen-cansplice
- id: pen_non_can_splice
  doc: penalty for a non-canonical splice site (12)
  type: long
  inputBinding:
    prefix: --pen-noncansplice
- id: pen_can_intron_len
  doc: penalty for long introns (G,-8,1) with canonical splice sites
  type: string
  inputBinding:
    prefix: --pen-canintronlen
- id: pen_non_can_intron_len
  doc: penalty for long introns (G,-8,1) with noncanonical splice sites
  type: string
  inputBinding:
    prefix: --pen-noncanintronlen
- id: min_intron_len
  doc: minimum intron length (20)
  type: long
  inputBinding:
    prefix: --min-intronlen
- id: max_intron_len
  doc: maximum intron length (500000)
  type: long
  inputBinding:
    prefix: --max-intronlen
- id: known_splice_site_in_file
  doc: provide a list of known splice sites
  type: File
  inputBinding:
    prefix: --known-splicesite-infile
- id: novel_splice_site_outfile
  doc: report a list of splice sites
  type: File
  inputBinding:
    prefix: --novel-splicesite-outfile
- id: novel_splice_site_in_file
  doc: provide a list of novel splice sites
  type: File
  inputBinding:
    prefix: --novel-splicesite-infile
- id: no_temp_splice_site
  doc: disable the use of splice sites found
  type: boolean
  inputBinding:
    prefix: --no-temp-splicesite
- id: no_spliced_alignment
  doc: disable spliced alignment
  type: boolean
  inputBinding:
    prefix: --no-spliced-alignment
- id: rna_strand_ness
  doc: specify strand-specific information (unstranded)
  type: string
  inputBinding:
    prefix: --rna-strandness
- id: tmo
  doc: reports only those alignments within known transcriptome
  type: boolean
  inputBinding:
    prefix: --tmo
- id: dta
  doc: reports alignments tailored for transcript assemblers
  type: boolean
  inputBinding:
    prefix: --dta
- id: dta_cufflinks
  doc: reports alignments tailored specifically for cufflinks
  type: boolean
  inputBinding:
    prefix: --dta-cufflinks
- id: avoid_pseudogene
  doc: tries to avoid aligning reads to pseudogenes (experimental option)
  type: boolean
  inputBinding:
    prefix: --avoid-pseudogene
- id: no_template_len_adjustment
  doc: disables template length adjustment for RNA-seq reads
  type: boolean
  inputBinding:
    prefix: --no-templatelen-adjustment
- id: mp
  doc: ',<int>   max and min penalties for mismatch; lower qual = lower penalty <6,2>'
  type: long
  inputBinding:
    prefix: --mp
- id: sp
  doc: ',<int>   max and min penalties for soft-clipping; lower qual = lower penalty
    <2,1>'
  type: long
  inputBinding:
    prefix: --sp
- id: no_soft_clip
  doc: no soft-clipping
  type: boolean
  inputBinding:
    prefix: --no-softclip
- id: np
  doc: penalty for non-A/C/G/Ts in read/ref (1)
  type: long
  inputBinding:
    prefix: --np
- id: rdg
  doc: ',<int>  read gap open, extend penalties (5,3)'
  type: long
  inputBinding:
    prefix: --rdg
- id: rfg
  doc: ',<int>  reference gap open, extend penalties (5,3)'
  type: long
  inputBinding:
    prefix: --rfg
- id: score_min
  doc: min acceptable alignment score w/r/t read length (L,0.0,-0.2)
  type: string
  inputBinding:
    prefix: --score-min
- id: k
  doc: 'It searches for at most <int> distinct, primary alignments for each read.
    Primary alignments mean  alignments whose alignment score is equal to or higher
    than any other alignments. The search terminates  when it cannot find more distinct
    valid alignments, or when it finds <int>, whichever happens first.  The alignment
    score for a paired-end alignment equals the sum of the alignment scores of  the
    individual mates. Each reported read or pair alignment beyond the first has the
    SAM ‘secondary’ bit  (which equals 256) set in its FLAGS field. For reads that
    have more than <int> distinct,  valid alignments, hisat2 does not guarantee that
    the <int> alignments reported are the best possible  in terms of alignment score.
    Default: 5 (linear index) or 10 (graph index). Note: HISAT2 is not designed with
    large values for -k in mind, and when aligning reads to long,  repetitive genomes,
    large -k could make alignment much slower.'
  type: long
  inputBinding:
    prefix: -k
- id: max_seeds
  doc: HISAT2, like other aligners, uses seed-and-extend approaches. HISAT2 tries
    to extend seeds to  full-length alignments. In HISAT2, --max-seeds is used to
    control the maximum number of seeds that  will be extended. For DNA-read alignment
    (--no-spliced-alignment), HISAT2 extends up to these many seeds and skips the
    rest of the seeds. For RNA-read alignment, HISAT2 skips extending seeds and reports  no
    alignments if the number of seeds is larger than the number specified with the
    option,  to be compatible with previous versions of HISAT2. Large values for --max-seeds
    may improve alignment  sensitivity, but HISAT2 is not designed with large values
    for --max-seeds in mind, and when aligning  reads to long, repetitive genomes,
    large --max-seeds could make alignment much slower.  The default value is the
    maximum of 5 and the value that comes with -k times 2.
  type: long
  inputBinding:
    prefix: --max-seeds
- id: a
  doc: /--all           HISAT2 reports all alignments it can find. Using the option
    is equivalent to using both --max-seeds  and -k with the maximum value that a
    64-bit signed integer can represent (9,223,372,036,854,775,807).
  type: boolean
  inputBinding:
    prefix: -a
- id: repeat
  doc: report alignments to repeat sequences directly
  type: boolean
  inputBinding:
    prefix: --repeat
- id: i
  doc: /--minins <int>  minimum fragment length (0), only valid with --no-spliced-alignment
  type: boolean
  inputBinding:
    prefix: -I
- id: x
  doc: /--maxins <int>  maximum fragment length (500), only valid with --no-spliced-alignment
  type: boolean
  inputBinding:
    prefix: -X
- id: fr
  doc: /--rf/--ff     -1, -2 mates align fw/rev, rev/fw, fw/fw (--fr)
  type: boolean
  inputBinding:
    prefix: --fr
- id: no_mixed
  doc: suppress unpaired alignments for paired reads
  type: boolean
  inputBinding:
    prefix: --no-mixed
- id: no_discordant
  doc: suppress discordant alignments for paired reads
  type: boolean
  inputBinding:
    prefix: --no-discordant
- id: un_gz
  doc: ", to gzip compress output, or add '-bz2' to bzip2 compress output.)"
  type: File
  inputBinding:
    prefix: --un-gz
- id: summary_file
  doc: print alignment summary to this file.
  type: File
  inputBinding:
    prefix: --summary-file
- id: new_summary
  doc: print alignment summary in a new style, which is more machine-friendly.
  type: boolean
  inputBinding:
    prefix: --new-summary
- id: quiet
  doc: print nothing to stderr except serious errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: met_file
  doc: send metrics to file at <path> (off)
  type: File
  inputBinding:
    prefix: --met-file
- id: met_stderr
  doc: send metrics to stderr (off)
  type: boolean
  inputBinding:
    prefix: --met-stderr
- id: met
  doc: report internal counters & metrics every <int> secs (1)
  type: long
  inputBinding:
    prefix: --met
- id: no_head
  doc: suppress header lines, i.e. lines starting with @
  type: boolean
  inputBinding:
    prefix: --no-head
- id: no_sq
  doc: suppress @SQ header lines
  type: boolean
  inputBinding:
    prefix: --no-sq
- id: rg_id
  doc: 'set read group id, reflected in @RG line and RG:Z: opt field'
  type: string
  inputBinding:
    prefix: --rg-id
- id: rg
  doc: 'add <text> ("lab:value") to @RG line of SAM header. Note: @RG line only printed
    when --rg-id is set.'
  type: string
  inputBinding:
    prefix: --rg
- id: omit_sec_seq
  doc: put '*' in SEQ and QUAL fields for secondary alignments.
  type: boolean
  inputBinding:
    prefix: --omit-sec-seq
- id: o
  doc: /--offrate <int> override offrate of index; must be >= index's offrate
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: /--threads <int> number of alignment threads to launch (1)
  type: boolean
  inputBinding:
    prefix: -p
- id: reorder
  doc: force SAM output order to match order of input reads
  type: boolean
  inputBinding:
    prefix: --reorder
- id: mm
  doc: use memory-mapped I/O for index; many 'hisat2's can share
  type: boolean
  inputBinding:
    prefix: --mm
- id: qc_filter
  doc: filter out reads that are bad according to QSEQ filter
  type: boolean
  inputBinding:
    prefix: --qc-filter
- id: seed
  doc: seed for random number generator (0)
  type: long
  inputBinding:
    prefix: --seed
- id: non_deterministic
  doc: rand. gen. arbitrarily instead of using read attributes
  type: string
  inputBinding:
    prefix: --non-deterministic
- id: remove_chr_name
  doc: remove 'chr' from reference names in alignment
  type: boolean
  inputBinding:
    prefix: --remove-chrname
- id: add_chr_name
  doc: "add 'chr' to reference names in alignment "
  type: boolean
  inputBinding:
    prefix: --add-chrname
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2
