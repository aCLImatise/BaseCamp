class: CommandLineTool
id: ../../../mason_frag_sequencing.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: quiet
  doc: Low verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Higher verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Highest verbosity.
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: seed
  doc: 'Seed to use for random number generator. Default: 0.'
  type: long
  inputBinding:
    prefix: --seed
- id: in
  doc: 'Path to input file. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*],
    .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*],
    and .bam, where * is any of the following extensions: gz and bgzf for transparent
    (de)compression.'
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: 'Output of single-end/left end reads. Valid filetypes are: .sam[.*], .raw[.*],
    .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*],
    and .bam, where * is any of the following extensions: gz and bgzf for transparent
    (de)compression.'
  type: string
  inputBinding:
    prefix: --out
- id: out_right
  doc: 'Output of right reads. Giving this options enables paired-end simulation.
    Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*],
    .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the following
    extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --out-right
- id: force_single_end
  doc: Force single-end simulation although --out-right is given.
  type: boolean
  inputBinding:
    prefix: --force-single-end
- id: seq_technology
  doc: 'Set sequencing technology to simulate. One of illumina, 454, and sanger. Default:
    illumina.'
  type: string
  inputBinding:
    prefix: --seq-technology
- id: seq_mate_orientation
  doc: 'Orientation for paired reads. See section Read Orientation below. One of FR,
    RF, FF, and FF2. Default: FR.'
  type: string
  inputBinding:
    prefix: --seq-mate-orientation
- id: seq_strands
  doc: 'Strands to simulate from, only applicable to paired sequencing simulation.
    One of forward, reverse, and both. Default: both.'
  type: string
  inputBinding:
    prefix: --seq-strands
- id: embed_read_info
  doc: Whether or not to embed read information.
  type: boolean
  inputBinding:
    prefix: --embed-read-info
- id: read_name_prefix
  doc: 'Read names will have this prefix. Default: simulated..'
  type: string
  inputBinding:
    prefix: --read-name-prefix
- id: enable_bs_seq
  doc: Enable BS-seq simulation.
  type: boolean
  inputBinding:
    prefix: --enable-bs-seq
- id: bs_seq_protocol
  doc: 'Protocol to use for BS-Seq simulation. One of directional and undirectional.
    Default: directional.'
  type: string
  inputBinding:
    prefix: --bs-seq-protocol
- id: bs_seq_conversion_rate
  doc: 'Conversion rate for unmethylated Cs to become Ts. In range [0..1]. Default:
    0.99.'
  type: string
  inputBinding:
    prefix: --bs-seq-conversion-rate
- id: illumina_read_length
  doc: 'Read length for Illumina simulation. In range [1..inf]. Default: 100.'
  type: long
  inputBinding:
    prefix: --illumina-read-length
- id: illumina_error_profile_file
  doc: 'Path to file with Illumina error profile. The file must be a text file with
    floating point numbers separated by space, each giving a positional error rate.
    Valid filetype is: .txt.'
  type: string
  inputBinding:
    prefix: --illumina-error-profile-file
- id: illumina_prob_insert
  doc: 'Insert per-base probability for insertion in Illumina sequencing. In range
    [0..1]. Default: 0.00005.'
  type: string
  inputBinding:
    prefix: --illumina-prob-insert
- id: illumina_prob_deletion
  doc: 'Insert per-base probability for deletion in Illumina sequencing. In range
    [0..1]. Default: 0.00005.'
  type: string
  inputBinding:
    prefix: --illumina-prob-deletion
- id: illumina_prob_mismatch_scale
  doc: 'Scaling factor for Illumina mismatch probability. In range [0..inf]. Default:
    1.0.'
  type: string
  inputBinding:
    prefix: --illumina-prob-mismatch-scale
- id: illumina_prob_mismatch
  doc: 'Average per-base mismatch probability in Illumina sequencing. In range [0.0..1.0].
    Default: 0.004.'
  type: string
  inputBinding:
    prefix: --illumina-prob-mismatch
- id: illumina_prob_mismatch_begin
  doc: 'Per-base mismatch probability of first base in Illumina sequencing. In range
    [0.0..1.0]. Default: 0.002.'
  type: string
  inputBinding:
    prefix: --illumina-prob-mismatch-begin
- id: illumina_prob_mismatch_end
  doc: 'Per-base mismatch probability of last base in Illumina sequencing. In range
    [0.0..1.0]. Default: 0.012.'
  type: string
  inputBinding:
    prefix: --illumina-prob-mismatch-end
- id: illumina_position_raise
  doc: 'Point where the error curve raises in relation to read length. In range [0.0..1.0].
    Default: 0.66.'
  type: string
  inputBinding:
    prefix: --illumina-position-raise
- id: illumina_quality_mean_begin
  doc: 'Mean PHRED quality for non-mismatch bases of first base in Illumina sequencing.
    Default: 40.0.'
  type: string
  inputBinding:
    prefix: --illumina-quality-mean-begin
- id: illumina_quality_mean_end
  doc: 'Mean PHRED quality for non-mismatch bases of last base in Illumina sequencing.
    Default: 39.5.'
  type: string
  inputBinding:
    prefix: --illumina-quality-mean-end
- id: illumina_quality_stddev_begin
  doc: 'Standard deviation of PHRED quality for non-mismatch bases of first base in
    Illumina sequencing. Default: 0.05.'
  type: string
  inputBinding:
    prefix: --illumina-quality-stddev-begin
- id: illumina_quality_stddev_end
  doc: 'Standard deviation of PHRED quality for non-mismatch bases of last base in
    Illumina sequencing. Default: 10.0.'
  type: string
  inputBinding:
    prefix: --illumina-quality-stddev-end
- id: illumina_mismatch_quality_mean_begin
  doc: 'Mean PHRED quality for mismatch bases of first base in Illumina sequencing.
    Default: 40.0.'
  type: string
  inputBinding:
    prefix: --illumina-mismatch-quality-mean-begin
- id: illumina_mismatch_quality_mean_end
  doc: 'Mean PHRED quality for mismatch bases of last base in Illumina sequencing.
    Default: 30.0.'
  type: string
  inputBinding:
    prefix: --illumina-mismatch-quality-mean-end
- id: illumina_mismatch_quality_stddev_begin
  doc: 'Standard deviation of PHRED quality for mismatch bases of first base in Illumina
    sequencing. Default: 3.0.'
  type: string
  inputBinding:
    prefix: --illumina-mismatch-quality-stddev-begin
- id: illumina_mismatch_quality_stddev_end
  doc: 'Standard deviation of PHRED quality for mismatch bases of last base in Illumina
    sequencing. Default: 15.0.'
  type: string
  inputBinding:
    prefix: --illumina-mismatch-quality-stddev-end
- id: illumina_left_template_fast_q
  doc: 'FASTQ file to use for a template for left-end reads. Valid filetypes are:
    .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],
    .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following
    extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --illumina-left-template-fastq
- id: illumina_right_template_fast_q
  doc: 'FASTQ file to use for a template for right-end reads. Valid filetypes are:
    .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],
    .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following
    extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --illumina-right-template-fastq
- id: sanger_read_length_model
  doc: 'The model to use for sampling the Sanger read length. One of normal and uniform.
    Default: normal.'
  type: string
  inputBinding:
    prefix: --sanger-read-length-model
- id: sanger_read_length_min
  doc: 'The minimal read length when the read length is sampled uniformly. In range
    [0..inf]. Default: 400.'
  type: long
  inputBinding:
    prefix: --sanger-read-length-min
- id: sanger_read_length_max
  doc: 'The maximal read length when the read length is sampled uniformly. In range
    [0..inf]. Default: 600.'
  type: long
  inputBinding:
    prefix: --sanger-read-length-max
- id: sanger_read_length_mean
  doc: 'The mean read length when the read length is sampled with normal distribution.
    In range [0..inf]. Default: 400.'
  type: string
  inputBinding:
    prefix: --sanger-read-length-mean
- id: sanger_read_length_error
  doc: 'The read length standard deviation when the read length is sampled uniformly.
    In range [0..inf]. Default: 40.'
  type: string
  inputBinding:
    prefix: --sanger-read-length-error
- id: sanger_prob_mismatch_scale
  doc: 'Scaling factor for Sanger mismatch probability. In range [0..inf]. Default:
    1.0.'
  type: string
  inputBinding:
    prefix: --sanger-prob-mismatch-scale
- id: sanger_prob_mismatch_begin
  doc: 'Per-base mismatch probability of first base in Sanger sequencing. In range
    [0.0..1.0]. Default: 0.005.'
  type: string
  inputBinding:
    prefix: --sanger-prob-mismatch-begin
- id: sanger_prob_mismatch_end
  doc: 'Per-base mismatch probability of last base in Sanger sequencing. In range
    [0.0..1.0]. Default: 0.001.'
  type: string
  inputBinding:
    prefix: --sanger-prob-mismatch-end
- id: sanger_prob_insertion_begin
  doc: 'Per-base insertion probability of first base in Sanger sequencing. In range
    [0.0..1.0]. Default: 0.0025.'
  type: string
  inputBinding:
    prefix: --sanger-prob-insertion-begin
- id: sanger_prob_insertion_end
  doc: 'Per-base insertion probability of last base in Sanger sequencing. In range
    [0.0..1.0]. Default: 0.005.'
  type: string
  inputBinding:
    prefix: --sanger-prob-insertion-end
- id: sanger_prob_deletion_begin
  doc: 'Per-base deletion probability of first base in Sanger sequencing. In range
    [0.0..1.0]. Default: 0.0025.'
  type: string
  inputBinding:
    prefix: --sanger-prob-deletion-begin
- id: sanger_prob_deletion_end
  doc: 'Per-base deletion probability of last base in Sanger sequencing. In range
    [0.0..1.0]. Default: 0.005.'
  type: string
  inputBinding:
    prefix: --sanger-prob-deletion-end
- id: sanger_quality_match_start_mean
  doc: 'Mean PHRED quality for non-mismatch bases of first base in Sanger sequencing.
    Default: 40.0.'
  type: string
  inputBinding:
    prefix: --sanger-quality-match-start-mean
- id: sanger_quality_match_end_mean
  doc: 'Mean PHRED quality for non-mismatch bases of last base in Sanger sequencing.
    Default: 39.5.'
  type: string
  inputBinding:
    prefix: --sanger-quality-match-end-mean
- id: sanger_quality_match_start_stddev
  doc: 'Mean PHRED quality for non-mismatch bases of first base in Sanger sequencing.
    Default: 0.1.'
  type: string
  inputBinding:
    prefix: --sanger-quality-match-start-stddev
- id: sanger_quality_match_end_stddev
  doc: 'Mean PHRED quality for non-mismatch bases of last base in Sanger sequencing.
    Default: 2.'
  type: string
  inputBinding:
    prefix: --sanger-quality-match-end-stddev
- id: sanger_quality_error_start_mean
  doc: 'Mean PHRED quality for erroneous bases of first base in Sanger sequencing.
    Default: 30.'
  type: string
  inputBinding:
    prefix: --sanger-quality-error-start-mean
- id: sanger_quality_error_end_mean
  doc: 'Mean PHRED quality for erroneous bases of last base in Sanger sequencing.
    Default: 20.'
  type: string
  inputBinding:
    prefix: --sanger-quality-error-end-mean
- id: sanger_quality_error_start_stddev
  doc: 'Mean PHRED quality for erroneous bases of first base in Sanger sequencing.
    Default: 2.'
  type: string
  inputBinding:
    prefix: --sanger-quality-error-start-stddev
- id: sanger_quality_error_end_stddev
  doc: 'Mean PHRED quality for erroneous bases of last base in Sanger sequencing.
    Default: 5.'
  type: string
  inputBinding:
    prefix: --sanger-quality-error-end-stddev
- id: four_five_four_read_length_model
  doc: 'The model to use for sampling the 454 read length. One of normal and uniform.
    Default: normal.'
  type: string
  inputBinding:
    prefix: --454-read-length-model
- id: four_five_four_read_length_min
  doc: 'The minimal read length when the read length is sampled uniformly. In range
    [0..inf]. Default: 10.'
  type: long
  inputBinding:
    prefix: --454-read-length-min
- id: four_five_four_read_length_max
  doc: 'The maximal read length when the read length is sampled uniformly. In range
    [0..inf]. Default: 600.'
  type: long
  inputBinding:
    prefix: --454-read-length-max
- id: four_five_four_read_length_mean
  doc: 'The mean read length when the read length is sampled with normal distribution.
    In range [0..inf]. Default: 400.'
  type: string
  inputBinding:
    prefix: --454-read-length-mean
- id: four_five_four_read_length_stddev
  doc: 'The read length standard deviation when the read length is sampled with normal
    distribution. In range [0..inf]. Default: 40.'
  type: string
  inputBinding:
    prefix: --454-read-length-stddev
- id: four_five_four_no_sqrt_in_std_dev
  doc: For error model, if set then (sigma = k * r)) is used, otherwise (sigma = k
    * sqrt(r)).
  type: boolean
  inputBinding:
    prefix: --454-no-sqrt-in-std-dev
- id: four_five_four_proportionality_factor
  doc: 'Proportionality factor for calculating the standard deviation proportional
    to the read length. In range [0..inf]. Default: 0.15.'
  type: string
  inputBinding:
    prefix: --454-proportionality-factor
- id: four_five_four_background_noise_mean
  doc: 'Mean of lognormal distribution to use for the noise. In range [0..inf]. Default:
    0.23.'
  type: string
  inputBinding:
    prefix: --454-background-noise-mean
- id: four_five_four_background_noise_stddev
  doc: 'Standard deviation of lognormal distribution to use for the noise. In range
    [0..inf]. Default: 0.15.'
  type: string
  inputBinding:
    prefix: --454-background-noise-stddev
- id: fr
  doc: 'Reads are inward-facing, the same as Illumina paired-end reads: R1 --> <--
    R2.'
  type: string
  inputBinding:
    position: 0
- id: rf
  doc: 'Reads are outward-facing, the same as Illumina mate-pair reads: R1 <-- -->
    R2.'
  type: string
  inputBinding:
    position: 1
- id: ff
  doc: 'Reads are on the same strand: R1 --> --> R2.'
  type: string
  inputBinding:
    position: 2
- id: ff_two
  doc: 'Reads are on the same strand but the "right" reads are sequenced to the left
    of the "left" reads, same as 454 paired: R2 --> --> R1.'
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- mason_frag_sequencing
