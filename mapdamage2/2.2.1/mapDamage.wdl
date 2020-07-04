version 1.0

task MapDamage {
  input {
    File? sambam_file_must
    String? reference
    String? down_sample
    String? down_sample_seed
    Boolean? merge_reference_sequences
    Int? length
    String? around
    Int? min_base_qual
    Directory? folder
    Boolean? fast_a
    Boolean? plot_only
    Boolean? quiet
    Boolean? verbose
    String? map_damage_modules
    String? ymax
    String? read_plot
    String? ref_plot
    String? title
    String? rand
    String? burn
    String? adjust
    String? iter
    Boolean? forward
    Boolean? reverse
    Boolean? var_disp
    Boolean? jukes_cantor
    Boolean? diff_hangs
    Boolean? fix_nicks
    Boolean? use_raw_nick_freq
    Boolean? single_stranded
    Boolean? theme_bw
    String? seq_length
    Boolean? stats_only
    Boolean? no_stats
    Boolean? check_r_packages
    Boolean? rescale
    Boolean? rescale_only
    String? rescale_out
    String? rescale_length_five_p
    String? rescale_length_three_p
  }
  command <<<
    mapDamage \
      ~{if defined(sambam_file_must) then ("--input " +  '"' + sambam_file_must + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(down_sample) then ("--downsample " +  '"' + down_sample + '"') else ""} \
      ~{if defined(down_sample_seed) then ("--downsample-seed " +  '"' + down_sample_seed + '"') else ""} \
      ~{true="--merge-reference-sequences" false="" merge_reference_sequences} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(around) then ("--around " +  '"' + around + '"') else ""} \
      ~{if defined(min_base_qual) then ("--min-basequal " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(folder) then ("--folder " +  '"' + folder + '"') else ""} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--plot-only" false="" plot_only} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(map_damage_modules) then ("--mapdamage-modules " +  '"' + map_damage_modules + '"') else ""} \
      ~{if defined(ymax) then ("--ymax " +  '"' + ymax + '"') else ""} \
      ~{if defined(read_plot) then ("--readplot " +  '"' + read_plot + '"') else ""} \
      ~{if defined(ref_plot) then ("--refplot " +  '"' + ref_plot + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(rand) then ("--rand " +  '"' + rand + '"') else ""} \
      ~{if defined(burn) then ("--burn " +  '"' + burn + '"') else ""} \
      ~{if defined(adjust) then ("--adjust " +  '"' + adjust + '"') else ""} \
      ~{if defined(iter) then ("--iter " +  '"' + iter + '"') else ""} \
      ~{true="--forward" false="" forward} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--var-disp" false="" var_disp} \
      ~{true="--jukes-cantor" false="" jukes_cantor} \
      ~{true="--diff-hangs" false="" diff_hangs} \
      ~{true="--fix-nicks" false="" fix_nicks} \
      ~{true="--use-raw-nick-freq" false="" use_raw_nick_freq} \
      ~{true="--single-stranded" false="" single_stranded} \
      ~{true="--theme-bw" false="" theme_bw} \
      ~{if defined(seq_length) then ("--seq-length " +  '"' + seq_length + '"') else ""} \
      ~{true="--stats-only" false="" stats_only} \
      ~{true="--no-stats" false="" no_stats} \
      ~{true="--check-R-packages" false="" check_r_packages} \
      ~{true="--rescale" false="" rescale} \
      ~{true="--rescale-only" false="" rescale_only} \
      ~{if defined(rescale_out) then ("--rescale-out " +  '"' + rescale_out + '"') else ""} \
      ~{if defined(rescale_length_five_p) then ("--rescale-length-5p " +  '"' + rescale_length_five_p + '"') else ""} \
      ~{if defined(rescale_length_three_p) then ("--rescale-length-3p " +  '"' + rescale_length_three_p + '"') else ""}
  >>>
  parameter_meta {
    sambam_file_must: "SAM/BAM file, must contain a valid header, use '-' for reading a BAM from stdin"
    reference: "Reference file in FASTA format"
    down_sample: "Downsample to a randomly selected fraction of the reads (if 0 < DOWNSAMPLE < 1), or a fixed number of randomly selected reads (if DOWNSAMPLE >= 1). By default, no downsampling is performed."
    down_sample_seed: "Seed value to use for downsampling. See documentation for py module 'random' for default behavior."
    merge_reference_sequences: "Ignore referece sequence names when tabulating reads (using '*' instead). Useful for alignments with a large number of reference sequnces, which may otherwise result in excessive memory or disk usage due to the number of tables generated."
    length: "read length, in nucleotides to consider [70]"
    around: "nucleotides to retrieve before/after reads [10]"
    min_base_qual: "minimun base quality Phred score considered, Phred-33 assumed [0]"
    folder: "folder name to store results [results_FILENAME]"
    fast_a: "Write alignments in a FASTA file"
    plot_only: "Run only plotting from a valid result folder"
    quiet: "Disable any output to stdout"
    verbose: "Display progression information during parsing"
    map_damage_modules: "Override the system wide installed mapDamage module"
    ymax: "graphical y-axis limit for nucleotide misincorporation frequencies [0.3]"
    read_plot: "read length, in nucleotides, considered for plotting nucleotide misincorporations [25]"
    ref_plot: "the number of reference nucleotides to consider for ploting base composition in the region located upstream and downstream of every read [10]"
    title: "title used for plots []"
    rand: "Number of random starting points for the likelihood optimization  [30]"
    burn: "Number of burnin iterations  [10000]"
    adjust: "Number of adjust proposal variance parameters iterations  [10]"
    iter: "Number of final MCMC iterations  [50000]"
    forward: "Using only the 5' end of the seqs  [False]"
    reverse: "Using only the 3' end of the seqs  [False]"
    var_disp: "Variable dispersion in the overhangs  [False]"
    jukes_cantor: "Use Jukes Cantor instead of HKY85  [False]"
    diff_hangs: "The overhangs are different for 5' and 3'  [False]"
    fix_nicks: "Fix the nick frequency vector (Only C.T from the 5' end and G.A from the 3' end)  [False]"
    use_raw_nick_freq: "Use the raw nick frequency vector without smoothing [False]"
    single_stranded: "Single stranded protocol [False]"
    theme_bw: "Use black and white theme in post. pred. plot [False]"
    seq_length: "How long sequence to use from each side [12]"
    stats_only: "Run only statistical estimation from a valid result folder"
    no_stats: "Disabled statistical estimation, active by default"
    check_r_packages: "Check if the R modules are working"
    rescale: "Rescale the quality scores in the BAM file using the output from the statistical estimation"
    rescale_only: "Run only rescaling from a valid result folder"
    rescale_out: "Write the rescaled BAM to this file"
    rescale_length_five_p: "How many bases to rescale at the 5' termini; defaults to --seq-length."
    rescale_length_three_p: "How many bases to rescale at the 5' termini; defaults to --seq-length."
  }
}