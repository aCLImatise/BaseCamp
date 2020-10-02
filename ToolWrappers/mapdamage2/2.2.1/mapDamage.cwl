class: CommandLineTool
id: mapDamage.cwl
inputs:
- id: in_input
  doc: "SAM/BAM file, must contain a valid header, use '-' for\nreading a BAM from\
    \ stdin"
  type: File
  inputBinding:
    prefix: --input
- id: in_reference
  doc: Reference file in FASTA format
  type: File
  inputBinding:
    prefix: --reference
- id: in_down_sample
  doc: "Downsample to a randomly selected fraction of the\nreads (if 0 < DOWNSAMPLE\
    \ < 1), or a fixed number of\nrandomly selected reads (if DOWNSAMPLE >= 1). By\n\
    default, no downsampling is performed."
  type: long
  inputBinding:
    prefix: --downsample
- id: in_down_sample_seed
  doc: "Seed value to use for downsampling. See documentation\nfor py module 'random'\
    \ for default behavior."
  type: string
  inputBinding:
    prefix: --downsample-seed
- id: in_merge_reference_sequences
  doc: "Ignore referece sequence names when tabulating reads\n(using '*' instead).\
    \ Useful for alignments with a\nlarge number of reference sequnces, which may\n\
    otherwise result in excessive memory or disk usage due\nto the number of tables\
    \ generated."
  type: boolean
  inputBinding:
    prefix: --merge-reference-sequences
- id: in_length
  doc: read length, in nucleotides to consider [70]
  type: long
  inputBinding:
    prefix: --length
- id: in_around
  doc: nucleotides to retrieve before/after reads [10]
  type: long
  inputBinding:
    prefix: --around
- id: in_min_base_qual
  doc: "minimun base quality Phred score considered, Phred-33\nassumed [0]"
  type: long
  inputBinding:
    prefix: --min-basequal
- id: in_folder_name_store
  doc: folder name to store results [results_FILENAME]
  type: Directory
  inputBinding:
    prefix: --folder
- id: in_fast_a
  doc: Write alignments in a FASTA file
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_plot_only
  doc: Run only plotting from a valid result folder
  type: boolean
  inputBinding:
    prefix: --plot-only
- id: in_quiet
  doc: Disable any output to stdout
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Display progression information during parsing
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_map_damage_modules
  doc: Override the system wide installed mapDamage module
  type: string
  inputBinding:
    prefix: --mapdamage-modules
- id: in_ymax
  doc: "graphical y-axis limit for nucleotide misincorporation\nfrequencies [0.3]"
  type: double
  inputBinding:
    prefix: --ymax
- id: in_read_plot
  doc: "read length, in nucleotides, considered for plotting\nnucleotide misincorporations\
    \ [25]"
  type: long
  inputBinding:
    prefix: --readplot
- id: in_ref_plot
  doc: "the number of reference nucleotides to consider for\nploting base composition\
    \ in the region located\nupstream and downstream of every read [10]"
  type: long
  inputBinding:
    prefix: --refplot
- id: in_title
  doc: title used for plots []
  type: string
  inputBinding:
    prefix: --title
- id: in_rand
  doc: Number of random starting points for the likelihood
  type: long
  inputBinding:
    prefix: --rand
- id: in_burn
  doc: Number of burnin iterations  [10000]
  type: long
  inputBinding:
    prefix: --burn
- id: in_adjust
  doc: Number of adjust proposal variance parameters
  type: long
  inputBinding:
    prefix: --adjust
- id: in_iter
  doc: Number of final MCMC iterations  [50000]
  type: long
  inputBinding:
    prefix: --iter
- id: in_forward
  doc: Using only the 5' end of the seqs  [False]
  type: boolean
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: Using only the 3' end of the seqs  [False]
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_var_disp
  doc: Variable dispersion in the overhangs  [False]
  type: boolean
  inputBinding:
    prefix: --var-disp
- id: in_jukes_cantor
  doc: Use Jukes Cantor instead of HKY85  [False]
  type: boolean
  inputBinding:
    prefix: --jukes-cantor
- id: in_diff_hangs
  doc: The overhangs are different for 5' and 3'  [False]
  type: boolean
  inputBinding:
    prefix: --diff-hangs
- id: in_fix_nicks
  doc: "Fix the nick frequency vector (Only C.T from the 5'\nend and G.A from the\
    \ 3' end)  [False]"
  type: boolean
  inputBinding:
    prefix: --fix-nicks
- id: in_use_raw_nick_freq
  doc: "Use the raw nick frequency vector without smoothing\n[False]"
  type: boolean
  inputBinding:
    prefix: --use-raw-nick-freq
- id: in_single_stranded
  doc: Single stranded protocol [False]
  type: boolean
  inputBinding:
    prefix: --single-stranded
- id: in_theme_bw
  doc: Use black and white theme in post. pred. plot [False]
  type: boolean
  inputBinding:
    prefix: --theme-bw
- id: in_seq_length
  doc: How long sequence to use from each side [12]
  type: long
  inputBinding:
    prefix: --seq-length
- id: in_stats_only
  doc: Run only statistical estimation from a valid result
  type: boolean
  inputBinding:
    prefix: --stats-only
- id: in_check_r_packages
  doc: Check if the R modules are working
  type: boolean
  inputBinding:
    prefix: --check-R-packages
- id: in_rescale
  doc: "Rescale the quality scores in the BAM file using the\noutput from the statistical\
    \ estimation"
  type: File
  inputBinding:
    prefix: --rescale
- id: in_rescale_only
  doc: Run only rescaling from a valid result folder
  type: boolean
  inputBinding:
    prefix: --rescale-only
- id: in_rescale_out
  doc: Write the rescaled BAM to this file
  type: File
  inputBinding:
    prefix: --rescale-out
- id: in_rescale_length_five_p
  doc: "How many bases to rescale at the 5' termini; defaults\nto --seq-length."
  type: long
  inputBinding:
    prefix: --rescale-length-5p
- id: in_rescale_length_three_p
  doc: "How many bases to rescale at the 5' termini; defaults\nto --seq-length."
  type: long
  inputBinding:
    prefix: --rescale-length-3p
- id: in__nostats_disabled
  doc: --no-stats          Disabled statistical estimation, active by default
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rescale
  doc: "Rescale the quality scores in the BAM file using the\noutput from the statistical\
    \ estimation"
  type: File
  outputBinding:
    glob: $(inputs.in_rescale)
cwlVersion: v1.1
baseCommand:
- mapDamage
