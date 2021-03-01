class: CommandLineTool
id: mason_simulator.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_quiet
  doc: Low verbosity.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Higher verbosity.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Highest verbosity.
  type: boolean?
  inputBinding:
    prefix: --very-verbose
- id: in_seed
  doc: 'Seed to use for random number generator. Default: 0.'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_meth_seed
  doc: "Seed to use for methylation level random number generator. Default:\n0."
  type: long?
  inputBinding:
    prefix: --meth-seed
- id: in_seed_spacing
  doc: 'Offset for seeds to use when multi-threading. Default: 2048.'
  type: long?
  inputBinding:
    prefix: --seed-spacing
- id: in_num_threads
  doc: 'Number of threads to use. In range [1..inf]. Default: 1.'
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_force_single_end
  doc: Force single-end simulation although --out-right file is given.
  type: File?
  inputBinding:
    prefix: --force-single-end
- id: in_chunk_size
  doc: "Number of fragments to simulate in one batch. In range [65536..inf].\nDefault:\
    \ 65536."
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_num_fragments
  doc: Number of reads/pairs to simulate. In range [1..inf].
  type: long?
  inputBinding:
    prefix: --num-fragments
- id: in_meth_fast_a_in
  doc: "FASTA file with methylation levels of the input file. Valid\nfiletypes are:\
    \ .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*],\n.fna[.*], .ffn[.*], .fastq[.*],\
    \ .fasta[.*], .faa[.*], .fa[.*],\n.embl[.*], and .bam, where * is any of the following\
    \ extensions: gz\nand bgzf for transparent (de)compression."
  type: File?
  inputBinding:
    prefix: --meth-fasta-in
- id: in_out
  doc: "Output of single-end/left end reads. Valid filetypes are: .sam[.*],\n.raw[.*],\
    \ .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],\n.fasta[.*], .faa[.*], .fa[.*],\
    \ and .bam, where * is any of the\nfollowing extensions: gz and bgzf for transparent\
    \ (de)compression."
  type: File?
  inputBinding:
    prefix: --out
- id: in_out_right
  doc: "Output of right reads. Giving this options enables paired-end\nsimulation.\
    \ Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],\n.fq[.*], .fna[.*], .ffn[.*],\
    \ .fastq[.*], .fasta[.*], .faa[.*],\n.fa[.*], and .bam, where * is any of the\
    \ following extensions: gz\nand bgzf for transparent (de)compression."
  type: File?
  inputBinding:
    prefix: --out-right
- id: in_out_alignment
  doc: "SAM/BAM file with alignments. Valid filetypes are: .sam[.*] and\n.bam, where\
    \ * is any of the following extensions: gz and bgzf for\ntransparent (de)compression."
  type: File?
  inputBinding:
    prefix: --out-alignment
- id: in_input_reference
  doc: "Path to FASTA file to read the reference from. Valid filetypes are:\n.sam[.*],\
    \ .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*],\n.fastq[.*], .fasta[.*],\
    \ .faa[.*], .fa[.*], .embl[.*], and .bam,\nwhere * is any of the following extensions:\
    \ gz and bgzf for\ntransparent (de)compression."
  type: File?
  inputBinding:
    prefix: --input-reference
- id: in_input_vcf
  doc: "Path to the VCF file with variants to apply. Valid filetype is:\n.vcf[.*],\
    \ where * is any of the following extensions: gz and bgzf\nfor transparent (de)compression."
  type: File?
  inputBinding:
    prefix: --input-vcf
- id: in_methylation_levels
  doc: Enable methylation level simulation.
  type: boolean?
  inputBinding:
    prefix: --methylation-levels
- id: in_meth_cg_mu
  doc: "Median of beta distribution for methylation level of CpG loci. In\nrange [0..1].\
    \ Default: 0.6."
  type: double?
  inputBinding:
    prefix: --meth-cg-mu
- id: in_meth_cg_sigma
  doc: "Standard deviation of beta distribution for methylation level of CpG\nloci.\
    \ In range [0..1]. Default: 0.03."
  type: double?
  inputBinding:
    prefix: --meth-cg-sigma
- id: in_meth_chg_mu
  doc: "Median of beta distribution for methylation level of CHG loci. In\nrange [0..1].\
    \ Default: 0.08."
  type: double?
  inputBinding:
    prefix: --meth-chg-mu
- id: in_meth_chg_sigma
  doc: "Standard deviation of beta distribution for methylation level of CHG\nloci.\
    \ In range [0..1]. Default: 0.008."
  type: double?
  inputBinding:
    prefix: --meth-chg-sigma
- id: in_meth_chh_mu
  doc: "Median of beta distribution for methylation level of CHH loci. In\nrange [0..1].\
    \ Default: 0.05."
  type: double?
  inputBinding:
    prefix: --meth-chh-mu
- id: in_meth_chh_sigma
  doc: "Standard deviation of beta distribution for methylation level of CHH\nloci.\
    \ In range [0..1]. Default: 0.005."
  type: double?
  inputBinding:
    prefix: --meth-chh-sigma
- id: in_fragment_size_model
  doc: "The model to use for the fragment size simulation. One of normal and\nuniform.\
    \ Default: normal."
  type: long?
  inputBinding:
    prefix: --fragment-size-model
- id: in_fragment_min_size
  doc: "Smallest fragment size to use when using uniform fragment size\nsimulation.\
    \ In range [1..inf]. Default: 100."
  type: long?
  inputBinding:
    prefix: --fragment-min-size
- id: in_fragment_max_size
  doc: "Largest fragment size to use when using uniform fragment size\nsimulation.\
    \ In range [1..inf]. Default: 400."
  type: long?
  inputBinding:
    prefix: --fragment-max-size
- id: in_fragment_mean_size
  doc: "Mean fragment size for normally distributed fragment size\nsimulation. In\
    \ range [1..inf]. Default: 300."
  type: long?
  inputBinding:
    prefix: --fragment-mean-size
- id: in_fragment_size_std_dev
  doc: "Fragment size standard deviation when using normally distributed\nfragment\
    \ size simulation. In range [1..inf]. Default: 30."
  type: long?
  inputBinding:
    prefix: --fragment-size-std-dev
- id: in_seq_technology
  doc: "Set sequencing technology to simulate. One of illumina, 454, and\nsanger.\
    \ Default: illumina."
  type: long?
  inputBinding:
    prefix: --seq-technology
- id: in_seq_mate_orientation
  doc: "Orientation for paired reads. See section Read Orientation below.\nOne of\
    \ FR, RF, FF, and FF2. Default: FR."
  type: long?
  inputBinding:
    prefix: --seq-mate-orientation
- id: in_seq_strands
  doc: "Strands to simulate from, only applicable to paired sequencing\nsimulation.\
    \ One of forward, reverse, and both. Default: both."
  type: string?
  inputBinding:
    prefix: --seq-strands
- id: in_embed_read_info
  doc: Whether or not to embed read information.
  type: boolean?
  inputBinding:
    prefix: --embed-read-info
- id: in_read_name_prefix
  doc: 'Read names will have this prefix. Default: simulated..'
  type: string?
  inputBinding:
    prefix: --read-name-prefix
- id: in_enable_bs_seq
  doc: Enable BS-seq simulation.
  type: boolean?
  inputBinding:
    prefix: --enable-bs-seq
- id: in_bs_seq_protocol
  doc: "Protocol to use for BS-Seq simulation. One of directional and\nundirectional.\
    \ Default: directional."
  type: string?
  inputBinding:
    prefix: --bs-seq-protocol
- id: in_bs_seq_conversion_rate
  doc: "Conversion rate for unmethylated Cs to become Ts. In range [0..1].\nDefault:\
    \ 0.99."
  type: double?
  inputBinding:
    prefix: --bs-seq-conversion-rate
- id: in_illumina_read_length
  doc: "Read length for Illumina simulation. In range [1..inf]. Default:\n100."
  type: long?
  inputBinding:
    prefix: --illumina-read-length
- id: in_illumina_error_profile_file
  doc: "Path to file with Illumina error profile. The file must be a text\nfile with\
    \ floating point numbers separated by space, each giving a\npositional error rate.\
    \ Valid filetype is: .txt."
  type: File?
  inputBinding:
    prefix: --illumina-error-profile-file
- id: in_illumina_prob_insert
  doc: "Insert per-base probability for insertion in Illumina sequencing. In\nrange\
    \ [0..1]. Default: 0.00005."
  type: double?
  inputBinding:
    prefix: --illumina-prob-insert
- id: in_illumina_prob_deletion
  doc: "Insert per-base probability for deletion in Illumina sequencing. In\nrange\
    \ [0..1]. Default: 0.00005."
  type: double?
  inputBinding:
    prefix: --illumina-prob-deletion
- id: in_illumina_prob_mismatch_scale
  doc: "Scaling factor for Illumina mismatch probability. In range [0..inf].\nDefault:\
    \ 1.0."
  type: double?
  inputBinding:
    prefix: --illumina-prob-mismatch-scale
- id: in_illumina_prob_mismatch
  doc: "Average per-base mismatch probability in Illumina sequencing. In\nrange [0.0..1.0].\
    \ Default: 0.004."
  type: double?
  inputBinding:
    prefix: --illumina-prob-mismatch
- id: in_illumina_prob_mismatch_begin
  doc: "Per-base mismatch probability of first base in Illumina sequencing.\nIn range\
    \ [0.0..1.0]. Default: 0.002."
  type: double?
  inputBinding:
    prefix: --illumina-prob-mismatch-begin
- id: in_illumina_prob_mismatch_end
  doc: "Per-base mismatch probability of last base in Illumina sequencing.\nIn range\
    \ [0.0..1.0]. Default: 0.012."
  type: double?
  inputBinding:
    prefix: --illumina-prob-mismatch-end
- id: in_illumina_position_raise
  doc: "Point where the error curve raises in relation to read length. In\nrange [0.0..1.0].\
    \ Default: 0.66."
  type: long?
  inputBinding:
    prefix: --illumina-position-raise
- id: in_illumina_quality_mean_begin
  doc: "Mean PHRED quality for non-mismatch bases of first base in Illumina\nsequencing.\
    \ Default: 40.0."
  type: double?
  inputBinding:
    prefix: --illumina-quality-mean-begin
- id: in_illumina_quality_mean_end
  doc: "Mean PHRED quality for non-mismatch bases of last base in Illumina\nsequencing.\
    \ Default: 39.5."
  type: double?
  inputBinding:
    prefix: --illumina-quality-mean-end
- id: in_illumina_quality_stddev_begin
  doc: "Standard deviation of PHRED quality for non-mismatch bases of first\nbase\
    \ in Illumina sequencing. Default: 0.05."
  type: double?
  inputBinding:
    prefix: --illumina-quality-stddev-begin
- id: in_illumina_quality_stddev_end
  doc: "Standard deviation of PHRED quality for non-mismatch bases of last\nbase in\
    \ Illumina sequencing. Default: 10.0."
  type: double?
  inputBinding:
    prefix: --illumina-quality-stddev-end
- id: in_illumina_mismatch_quality_mean_begin
  doc: "Mean PHRED quality for mismatch bases of first base in Illumina\nsequencing.\
    \ Default: 40.0."
  type: double?
  inputBinding:
    prefix: --illumina-mismatch-quality-mean-begin
- id: in_illumina_mismatch_quality_mean_end
  doc: "Mean PHRED quality for mismatch bases of last base in Illumina\nsequencing.\
    \ Default: 30.0."
  type: double?
  inputBinding:
    prefix: --illumina-mismatch-quality-mean-end
- id: in_illumina_mismatch_quality_stddev_begin
  doc: "Standard deviation of PHRED quality for mismatch bases of first base\nin Illumina\
    \ sequencing. Default: 3.0."
  type: double?
  inputBinding:
    prefix: --illumina-mismatch-quality-stddev-begin
- id: in_illumina_mismatch_quality_stddev_end
  doc: "Standard deviation of PHRED quality for mismatch bases of last base\nin Illumina\
    \ sequencing. Default: 15.0."
  type: double?
  inputBinding:
    prefix: --illumina-mismatch-quality-stddev-end
- id: in_illumina_left_template_fast_q
  doc: "FASTQ file to use for a template for left-end reads. Valid filetypes\nare:\
    \ .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*],\n.ffn[.*], .fastq[.*],\
    \ .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and\n.bam, where * is any of the following\
    \ extensions: gz and bgzf for\ntransparent (de)compression."
  type: File?
  inputBinding:
    prefix: --illumina-left-template-fastq
- id: in_illumina_right_template_fast_q
  doc: "FASTQ file to use for a template for right-end reads. Valid\nfiletypes are:\
    \ .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*],\n.fna[.*], .ffn[.*], .fastq[.*],\
    \ .fasta[.*], .faa[.*], .fa[.*],\n.embl[.*], and .bam, where * is any of the following\
    \ extensions: gz\nand bgzf for transparent (de)compression."
  type: File?
  inputBinding:
    prefix: --illumina-right-template-fastq
- id: in_sanger_read_length_model
  doc: "The model to use for sampling the Sanger read length. One of normal\nand uniform.\
    \ Default: normal."
  type: long?
  inputBinding:
    prefix: --sanger-read-length-model
- id: in_sanger_read_length_min
  doc: "The minimal read length when the read length is sampled uniformly.\nIn range\
    \ [0..inf]. Default: 400."
  type: long?
  inputBinding:
    prefix: --sanger-read-length-min
- id: in_sanger_read_length_max
  doc: "The maximal read length when the read length is sampled uniformly.\nIn range\
    \ [0..inf]. Default: 600."
  type: long?
  inputBinding:
    prefix: --sanger-read-length-max
- id: in_sanger_read_length_mean
  doc: "The mean read length when the read length is sampled with normal\ndistribution.\
    \ In range [0..inf]. Default: 400."
  type: long?
  inputBinding:
    prefix: --sanger-read-length-mean
- id: in_sanger_read_length_error
  doc: "The read length standard deviation when the read length is sampled\nuniformly.\
    \ In range [0..inf]. Default: 40."
  type: long?
  inputBinding:
    prefix: --sanger-read-length-error
- id: in_sanger_prob_mismatch_scale
  doc: "Scaling factor for Sanger mismatch probability. In range [0..inf].\nDefault:\
    \ 1.0."
  type: double?
  inputBinding:
    prefix: --sanger-prob-mismatch-scale
- id: in_sanger_prob_mismatch_begin
  doc: "Per-base mismatch probability of first base in Sanger sequencing. In\nrange\
    \ [0.0..1.0]. Default: 0.005."
  type: double?
  inputBinding:
    prefix: --sanger-prob-mismatch-begin
- id: in_sanger_prob_mismatch_end
  doc: "Per-base mismatch probability of last base in Sanger sequencing. In\nrange\
    \ [0.0..1.0]. Default: 0.001."
  type: double?
  inputBinding:
    prefix: --sanger-prob-mismatch-end
- id: in_sanger_prob_insertion_begin
  doc: "Per-base insertion probability of first base in Sanger sequencing.\nIn range\
    \ [0.0..1.0]. Default: 0.0025."
  type: double?
  inputBinding:
    prefix: --sanger-prob-insertion-begin
- id: in_sanger_prob_insertion_end
  doc: "Per-base insertion probability of last base in Sanger sequencing. In\nrange\
    \ [0.0..1.0]. Default: 0.005."
  type: double?
  inputBinding:
    prefix: --sanger-prob-insertion-end
- id: in_sanger_prob_deletion_begin
  doc: "Per-base deletion probability of first base in Sanger sequencing. In\nrange\
    \ [0.0..1.0]. Default: 0.0025."
  type: double?
  inputBinding:
    prefix: --sanger-prob-deletion-begin
- id: in_sanger_prob_deletion_end
  doc: "Per-base deletion probability of last base in Sanger sequencing. In\nrange\
    \ [0.0..1.0]. Default: 0.005."
  type: double?
  inputBinding:
    prefix: --sanger-prob-deletion-end
- id: in_sanger_quality_match_start_mean
  doc: "Mean PHRED quality for non-mismatch bases of first base in Sanger\nsequencing.\
    \ Default: 40.0."
  type: double?
  inputBinding:
    prefix: --sanger-quality-match-start-mean
- id: in_sanger_quality_match_end_mean
  doc: "Mean PHRED quality for non-mismatch bases of last base in Sanger\nsequencing.\
    \ Default: 39.5."
  type: double?
  inputBinding:
    prefix: --sanger-quality-match-end-mean
- id: in_sanger_quality_match_start_stddev
  doc: "Mean PHRED quality for non-mismatch bases of first base in Sanger\nsequencing.\
    \ Default: 0.1."
  type: double?
  inputBinding:
    prefix: --sanger-quality-match-start-stddev
- id: in_sanger_quality_match_end_stddev
  doc: "Mean PHRED quality for non-mismatch bases of last base in Sanger\nsequencing.\
    \ Default: 2."
  type: long?
  inputBinding:
    prefix: --sanger-quality-match-end-stddev
- id: in_sanger_quality_error_start_mean
  doc: "Mean PHRED quality for erroneous bases of first base in Sanger\nsequencing.\
    \ Default: 30."
  type: long?
  inputBinding:
    prefix: --sanger-quality-error-start-mean
- id: in_sanger_quality_error_end_mean
  doc: "Mean PHRED quality for erroneous bases of last base in Sanger\nsequencing.\
    \ Default: 20."
  type: long?
  inputBinding:
    prefix: --sanger-quality-error-end-mean
- id: in_sanger_quality_error_start_stddev
  doc: "Mean PHRED quality for erroneous bases of first base in Sanger\nsequencing.\
    \ Default: 2."
  type: long?
  inputBinding:
    prefix: --sanger-quality-error-start-stddev
- id: in_sanger_quality_error_end_stddev
  doc: "Mean PHRED quality for erroneous bases of last base in Sanger\nsequencing.\
    \ Default: 5."
  type: long?
  inputBinding:
    prefix: --sanger-quality-error-end-stddev
- id: in_four_five_four_read_length_model
  doc: "The model to use for sampling the 454 read length. One of normal and\nuniform.\
    \ Default: normal."
  type: long?
  inputBinding:
    prefix: --454-read-length-model
- id: in_four_five_four_read_length_min
  doc: "The minimal read length when the read length is sampled uniformly.\nIn range\
    \ [0..inf]. Default: 10."
  type: long?
  inputBinding:
    prefix: --454-read-length-min
- id: in_four_five_four_read_length_max
  doc: "The maximal read length when the read length is sampled uniformly.\nIn range\
    \ [0..inf]. Default: 600."
  type: long?
  inputBinding:
    prefix: --454-read-length-max
- id: in_four_five_four_read_length_mean
  doc: "The mean read length when the read length is sampled with normal\ndistribution.\
    \ In range [0..inf]. Default: 400."
  type: long?
  inputBinding:
    prefix: --454-read-length-mean
- id: in_four_five_four_read_length_stddev
  doc: "The read length standard deviation when the read length is sampled\nwith normal\
    \ distribution. In range [0..inf]. Default: 40."
  type: long?
  inputBinding:
    prefix: --454-read-length-stddev
- id: in_four_five_four_no_sqrt_in_std_dev
  doc: "For error model, if set then (sigma = k * r)) is used, otherwise\n(sigma =\
    \ k * sqrt(r))."
  type: boolean?
  inputBinding:
    prefix: --454-no-sqrt-in-std-dev
- id: in_four_five_four_proportionality_factor
  doc: "Proportionality factor for calculating the standard deviation\nproportional\
    \ to the read length. In range [0..inf]. Default: 0.15."
  type: long?
  inputBinding:
    prefix: --454-proportionality-factor
- id: in_four_five_four_background_noise_mean
  doc: "Mean of lognormal distribution to use for the noise. In range\n[0..inf]. Default:\
    \ 0.23."
  type: long?
  inputBinding:
    prefix: --454-background-noise-mean
- id: in_four_five_four_background_noise_stddev
  doc: "Standard deviation of lognormal distribution to use for the noise.\nIn range\
    \ [0..inf]. Default: 0.15."
  type: long?
  inputBinding:
    prefix: --454-background-noise-stddev
- id: in_simulated_dot
  doc: OPTIONS
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: After the generation of the haplotypes, fragments are sampled from the
  type: File
  inputBinding:
    position: 0
- id: in_nm
  doc: Edit distance when aligned to the reference (i).
  type: string
  inputBinding:
    position: 0
- id: in_md
  doc: String for mismatching positions (Z).
  type: string
  inputBinding:
    position: 1
- id: in_or
  doc: Name of original reference, (Z).
  type: string
  inputBinding:
    position: 2
- id: in_oh
  doc: Number of the original hhaplotype (1-based), (i).
  type: string
  inputBinding:
    position: 3
- id: in_op
  doc: original position on the original reference (i).
  type: string
  inputBinding:
    position: 4
- id: in_os
  doc: original strand, F/R for forward and reverse strand (A).
  type: string
  inputBinding:
    position: 5
- id: in_ur
  doc: "Reason for being unaligned, I/B for being in insertion or spanning\nover breakpoint."
  type: string
  inputBinding:
    position: 6
- id: in_xe
  doc: Number of sequencing errors in the read (i).
  type: string
  inputBinding:
    position: 7
- id: in_xs
  doc: Number of SNPs in the read alignment (i).
  type: string
  inputBinding:
    position: 8
- id: in_xi
  doc: Number of small indels in the read alignment (i).
  type: string
  inputBinding:
    position: 9
- id: in_files_dot
  doc: READ ORIENTATION
  type: string
  inputBinding:
    position: 0
- id: in_fr
  doc: "Reads are inward-facing, the same as Illumina paired-end reads: R1\n--> <--\
    \ R2."
  type: string
  inputBinding:
    position: 0
- id: in_rf
  doc: "Reads are outward-facing, the same as Illumina mate-pair reads: R1\n<-- -->\
    \ R2."
  type: string
  inputBinding:
    position: 1
- id: in_ff
  doc: 'Reads are on the same strand: R1 --> --> R2.'
  type: string
  inputBinding:
    position: 2
- id: in_ff_two
  doc: "Reads are on the same strand but the \"right\" reads are sequenced to\nthe\
    \ left of the \"left\" reads, same as 454 paired: R2 --> --> R1."
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_single_end
  doc: Force single-end simulation although --out-right file is given.
  type: File?
  outputBinding:
    glob: $(inputs.in_force_single_end)
- id: out_out
  doc: "Output of single-end/left end reads. Valid filetypes are: .sam[.*],\n.raw[.*],\
    \ .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],\n.fasta[.*], .faa[.*], .fa[.*],\
    \ and .bam, where * is any of the\nfollowing extensions: gz and bgzf for transparent\
    \ (de)compression."
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_right
  doc: "Output of right reads. Giving this options enables paired-end\nsimulation.\
    \ Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],\n.fq[.*], .fna[.*], .ffn[.*],\
    \ .fastq[.*], .fasta[.*], .faa[.*],\n.fa[.*], and .bam, where * is any of the\
    \ following extensions: gz\nand bgzf for transparent (de)compression."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_right)
- id: out_out_alignment
  doc: "SAM/BAM file with alignments. Valid filetypes are: .sam[.*] and\n.bam, where\
    \ * is any of the following extensions: gz and bgzf for\ntransparent (de)compression."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_alignment)
hints: []
cwlVersion: v1.1
baseCommand:
- mason_simulator
