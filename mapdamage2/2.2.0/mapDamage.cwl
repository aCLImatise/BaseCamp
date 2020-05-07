class: CommandLineTool
id: mapDamage.cwl
inputs:
- id: input
  doc: SAM/BAM file, must contain a valid header, use '-' for reading a BAM from stdin
  type: File
  inputBinding:
    prefix: --input
- id: reference
  doc: Reference file in FASTA format
  type: string
  inputBinding:
    prefix: --reference
- id: down_sample
  doc: Downsample to a randomly selected fraction of the reads (if 0 < DOWNSAMPLE
    < 1), or a fixed number of randomly selected reads (if DOWNSAMPLE >= 1). By default,
    no downsampling is performed.
  type: string
  inputBinding:
    prefix: --downsample
- id: down_sample_seed
  doc: Seed value to use for downsampling. See documentation for py module 'random'
    for default behavior.
  type: string
  inputBinding:
    prefix: --downsample-seed
- id: merge_reference_sequences
  doc: Ignore referece sequence names when tabulating reads (using '*' instead). Useful
    for alignments with a large number of reference sequnces, which may otherwise
    result in excessive memory or disk usage due to the number of tables generated.
  type: boolean
  inputBinding:
    prefix: --merge-reference-sequences
- id: length
  doc: read length, in nucleotides to consider [70]
  type: long
  inputBinding:
    prefix: --length
- id: around
  doc: nucleotides to retrieve before/after reads [10]
  type: string
  inputBinding:
    prefix: --around
- id: min_base_qual
  doc: minimun base quality Phred score considered, Phred-33 assumed [0]
  type: long
  inputBinding:
    prefix: --min-basequal
- id: folder
  doc: folder name to store results [results_FILENAME]
  type: Directory
  inputBinding:
    prefix: --folder
- id: fast_a
  doc: Write alignments in a FASTA file
  type: boolean
  inputBinding:
    prefix: --fasta
- id: plot_only
  doc: Run only plotting from a valid result folder
  type: boolean
  inputBinding:
    prefix: --plot-only
- id: quiet
  doc: Disable any output to stdout
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Display progression information during parsing
  type: boolean
  inputBinding:
    prefix: --verbose
- id: map_damage_modules
  doc: Override the system wide installed mapDamage module
  type: string
  inputBinding:
    prefix: --mapdamage-modules
- id: ymax
  doc: graphical y-axis limit for nucleotide misincorporation frequencies [0.3]
  type: string
  inputBinding:
    prefix: --ymax
- id: read_plot
  doc: read length, in nucleotides, considered for plotting nucleotide misincorporations
    [25]
  type: string
  inputBinding:
    prefix: --readplot
- id: ref_plot
  doc: the number of reference nucleotides to consider for ploting base composition
    in the region located upstream and downstream of every read [10]
  type: string
  inputBinding:
    prefix: --refplot
- id: title
  doc: title used for plots []
  type: string
  inputBinding:
    prefix: --title
- id: rand
  doc: Number of random starting points for the likelihood optimization  [30]
  type: string
  inputBinding:
    prefix: --rand
- id: burn
  doc: Number of burnin iterations  [10000]
  type: string
  inputBinding:
    prefix: --burn
- id: adjust
  doc: Number of adjust proposal variance parameters iterations  [10]
  type: string
  inputBinding:
    prefix: --adjust
- id: iter
  doc: Number of final MCMC iterations  [50000]
  type: string
  inputBinding:
    prefix: --iter
- id: forward
  doc: Using only the 5' end of the seqs  [False]
  type: boolean
  inputBinding:
    prefix: --forward
- id: reverse
  doc: Using only the 3' end of the seqs  [False]
  type: boolean
  inputBinding:
    prefix: --reverse
- id: var_disp
  doc: Variable dispersion in the overhangs  [False]
  type: boolean
  inputBinding:
    prefix: --var-disp
- id: jukes_cantor
  doc: Use Jukes Cantor instead of HKY85  [False]
  type: boolean
  inputBinding:
    prefix: --jukes-cantor
- id: diff_hangs
  doc: The overhangs are different for 5' and 3'  [False]
  type: boolean
  inputBinding:
    prefix: --diff-hangs
- id: fix_nicks
  doc: Fix the nick frequency vector (Only C.T from the 5' end and G.A from the 3'
    end)  [False]
  type: boolean
  inputBinding:
    prefix: --fix-nicks
- id: use_raw_nick_freq
  doc: Use the raw nick frequency vector without smoothing [False]
  type: boolean
  inputBinding:
    prefix: --use-raw-nick-freq
- id: single_stranded
  doc: Single stranded protocol [False]
  type: boolean
  inputBinding:
    prefix: --single-stranded
- id: theme_bw
  doc: Use black and white theme in post. pred. plot [False]
  type: boolean
  inputBinding:
    prefix: --theme-bw
- id: seq_length
  doc: How long sequence to use from each side [12]
  type: string
  inputBinding:
    prefix: --seq-length
- id: stats_only
  doc: Run only statistical estimation from a valid result folder
  type: boolean
  inputBinding:
    prefix: --stats-only
- id: no_stats
  doc: Disabled statistical estimation, active by default
  type: boolean
  inputBinding:
    prefix: --no-stats
- id: check_r_packages
  doc: Check if the R modules are working
  type: boolean
  inputBinding:
    prefix: --check-R-packages
- id: rescale
  doc: Rescale the quality scores in the BAM file using the output from the statistical
    estimation
  type: boolean
  inputBinding:
    prefix: --rescale
- id: rescale_only
  doc: Run only rescaling from a valid result folder
  type: boolean
  inputBinding:
    prefix: --rescale-only
- id: rescale_out
  doc: Write the rescaled BAM to this file
  type: string
  inputBinding:
    prefix: --rescale-out
- id: rescale_length_5p
  doc: How many bases to rescale at the 5' termini; defaults to --seq-length.
  type: string
  inputBinding:
    prefix: --rescale-length-5p
- id: rescale_length_3p
  doc: How many bases to rescale at the 5' termini; defaults to --seq-length.
  type: string
  inputBinding:
    prefix: --rescale-length-3p
outputs: []
cwlVersion: v1.1
baseCommand:
- mapDamage
