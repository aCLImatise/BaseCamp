class: CommandLineTool
id: iva.cwl
inputs:
- id: f
  doc: '[.gz], --reads_fwd filename[.gz] Name of forward reads fasta/q file. Must
    be used in conjunction with --reads_rev'
  type: File
  inputBinding:
    prefix: -f
- id: r
  doc: '[.gz], --reads_rev filename[.gz] Name of reverse reads fasta/q file. Must
    be used in conjunction with --reads_fwd'
  type: File
  inputBinding:
    prefix: -r
- id: fr
  doc: '[.gz]    Name of interleaved fasta/q file'
  type: File
  inputBinding:
    prefix: --fr
- id: keep_files
  doc: Keep intermediate files (could be many!). Default is to delete all unnecessary
    files
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: contigs
  doc: '[.gz] Fasta file of contigs to be extended. Incompatible with --reference'
  type: File
  inputBinding:
    prefix: --contigs
- id: reference
  doc: '[.gz] EXPERIMENTAL! This option is EXPERIMENTAL, not recommended, and has
    not been tested! Fasta file of reference genome, or parts thereof. IVA will try
    to assemble one contig per sequence in this file. Incompatible with --contigs'
  type: File
  inputBinding:
    prefix: --reference
- id: verbose
  doc: Be verbose by printing messages to stdout. Use up to three times for increasing
    verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: s_malt_k
  doc: kmer hash length in SMALT (the -k option in smalt index) [19]
  type: long
  inputBinding:
    prefix: --smalt_k
- id: s_malt_s
  doc: kmer hash step size in SMALT (the -s option in smalt index) [11]
  type: long
  inputBinding:
    prefix: --smalt_s
- id: s_malt_id
  doc: Minimum identity threshold for mapping to be reported (the -y option in smalt
    map) [0.5]
  type: double
  inputBinding:
    prefix: --smalt_id
- id: ctg_first_trim
  doc: Number of bases to trim off the end of every contig before extending for the
    first time [25]
  type: long
  inputBinding:
    prefix: --ctg_first_trim
- id: ctg_iter_trim
  doc: During iterative extension, number of bases to trim off the end of a contig
    when extension fails (then try extending again) [10]
  type: long
  inputBinding:
    prefix: --ctg_iter_trim
- id: ext_min_cov
  doc: Minimum kmer depth needed to use that kmer to extend a contig [10]
  type: long
  inputBinding:
    prefix: --ext_min_cov
- id: ext_min_ratio
  doc: Sets N, where kmer for extension must be at least N times more abundant than
    next most common kmer [4]
  type: double
  inputBinding:
    prefix: --ext_min_ratio
- id: ext_max_bases
  doc: Maximum number of bases to try to extend on each iteration [100]
  type: long
  inputBinding:
    prefix: --ext_max_bases
- id: ext_min_clip
  doc: Set minimum number of bases soft clipped off a read for those bases to be used
    for extension [3]
  type: long
  inputBinding:
    prefix: --ext_min_clip
- id: max_contigs
  doc: Maximum number of contigs allowed in the assembly. No more seeds generated
    if the cutoff is reached [50]
  type: long
  inputBinding:
    prefix: --max_contigs
- id: make_new_seeds
  doc: When no more contigs can be extended, generate a new seed. This is forced to
    be true when --contigs is not used
  type: boolean
  inputBinding:
    prefix: --make_new_seeds
- id: seed_start_length
  doc: 'When making a seed sequence, use the most common kmer of this length. Default
    is to use the minimum of (median read length, 95). Warning: it is not recommended
    to set this higher than 95'
  type: long
  inputBinding:
    prefix: --seed_start_length
- id: seed_stop_length
  doc: Stop extending seed using perfect matches from reads when this length is reached.
    Future extensions are then made by treating the seed as a contig [0.9*max_insert]
  type: long
  inputBinding:
    prefix: --seed_stop_length
- id: seed_min_km_er_cov
  doc: Minimum kmer coverage of initial seed [25]
  type: long
  inputBinding:
    prefix: --seed_min_kmer_cov
- id: seed_max_km_er_cov
  doc: Maximum kmer coverage of initial seed [1000000]
  type: long
  inputBinding:
    prefix: --seed_max_kmer_cov
- id: seed_ext_max_bases
  doc: Maximum number of bases to try to extend on each iteration [50]
  type: long
  inputBinding:
    prefix: --seed_ext_max_bases
- id: seed_overlap_length
  doc: Number of overlapping bases needed between read and seed to use that read to
    extend [seed_start_length]
  type: long
  inputBinding:
    prefix: --seed_overlap_length
- id: seed_ext_min_cov
  doc: Minimum kmer depth needed to use that kmer to extend a contig [10]
  type: long
  inputBinding:
    prefix: --seed_ext_min_cov
- id: seed_ext_min_ratio
  doc: Sets N, where kmer for extension must be at least N times more abundant than
    next most common kmer [4]
  type: double
  inputBinding:
    prefix: --seed_ext_min_ratio
- id: trim_mo_matic
  doc: Provide location of trimmomatic.jar file to enable read trimming. Required
    if --adapters used
  type: File
  inputBinding:
    prefix: --trimmomatic
- id: trim_mo_qual
  doc: Trimmomatic options used to quality trim reads [LEADING:10 TRAILING:10 SLIDINGWINDOW:4:20]
  type: string
  inputBinding:
    prefix: --trimmo_qual
- id: adapters
  doc: Fasta file of adapter sequences to be trimmed off reads. If used, must also
    use --trimmomatic. Default is file of adapters supplied with IVA
  type: File
  inputBinding:
    prefix: --adapters
- id: min_trimmed_length
  doc: Minimum length of read after trimming [50]
  type: long
  inputBinding:
    prefix: --min_trimmed_length
- id: pcr_primers
  doc: FASTA file of primers. The first perfect match found to a sequence in the primers
    file will be trimmed off the start of each read. This is run after trimmomatic
    (if --trimmomatic used)
  type: File
  inputBinding:
    prefix: --pcr_primers
- id: max_insert
  doc: Maximum insert size (includes read length). Reads with inferred insert size
    more than the maximum will not be used to extend contigs [800]
  type: long
  inputBinding:
    prefix: --max_insert
- id: threads
  doc: Number of threads to use [1]
  type: long
  inputBinding:
    prefix: --threads
- id: kmc_one_thread
  doc: Force kmc to use one thread. By default the value of -t/--threads is used when
    running kmc
  type: boolean
  inputBinding:
    prefix: --kmc_onethread
- id: strand_bias
  doc: in [0,0.5] Set strand bias cutoff of mapped reads when trimming contig ends,
    in the interval [0,0.5]. A value of x means that a base needs min(fwd_depth, rev_depth)
    / total_depth <= x. The only time this should be used is with libraries with overlapping
    reads (ie fragment length < 2*read length), and even then, it can make results
    worse. If used, try a low value like 0.1 first [0]
  type: double
  inputBinding:
    prefix: --strand_bias
- id: test
  doc: Run using built in test data. All other options will be ignored, except the
    mandatory output directory, and --trimmomatic and --threads can be also be used
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- iva
