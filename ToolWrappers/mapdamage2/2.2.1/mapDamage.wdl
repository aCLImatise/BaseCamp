version 1.0

task MapDamage {
  input {
    File? sambam_file_contain
    File? reference
    Int? down_sample
    String? down_sample_seed
    Boolean? merge_reference_sequences
    Int? length
    Int? around
    Int? min_base_qual
    Directory? folder_name_store
    Boolean? fast_a
    Boolean? plot_only
    Boolean? quiet
    Boolean? verbose
    String? map_damage_modules
    Float? ymax
    Int? read_plot
    Int? ref_plot
    String? title
    Int? rand
    Int? burn
    Int? adjust
    Int? iter
    Boolean? forward
    Boolean? reverse
    Boolean? var_disp
    Boolean? jukes_cantor
    Boolean? diff_hangs
    Boolean? fix_nicks
    Boolean? use_raw_nick_freq
    Boolean? single_stranded
    Boolean? theme_bw
    Int? seq_length
    Boolean? stats_only
    Boolean? check_r_packages
    File? rescale
    Boolean? rescale_only
    File? rescale_out
    Int? rescale_length_five_p
    Int? rescale_length_three_p
    Directory nostats_disabled_statistical
  }
  command <<<
    mapDamage \
      ~{nostats_disabled_statistical} \
      ~{if defined(sambam_file_contain) then ("--input " +  '"' + sambam_file_contain + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(down_sample) then ("--downsample " +  '"' + down_sample + '"') else ""} \
      ~{if defined(down_sample_seed) then ("--downsample-seed " +  '"' + down_sample_seed + '"') else ""} \
      ~{if (merge_reference_sequences) then "--merge-reference-sequences" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(around) then ("--around " +  '"' + around + '"') else ""} \
      ~{if defined(min_base_qual) then ("--min-basequal " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(folder_name_store) then ("--folder " +  '"' + folder_name_store + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (plot_only) then "--plot-only" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(map_damage_modules) then ("--mapdamage-modules " +  '"' + map_damage_modules + '"') else ""} \
      ~{if defined(ymax) then ("--ymax " +  '"' + ymax + '"') else ""} \
      ~{if defined(read_plot) then ("--readplot " +  '"' + read_plot + '"') else ""} \
      ~{if defined(ref_plot) then ("--refplot " +  '"' + ref_plot + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(rand) then ("--rand " +  '"' + rand + '"') else ""} \
      ~{if defined(burn) then ("--burn " +  '"' + burn + '"') else ""} \
      ~{if defined(adjust) then ("--adjust " +  '"' + adjust + '"') else ""} \
      ~{if defined(iter) then ("--iter " +  '"' + iter + '"') else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (var_disp) then "--var-disp" else ""} \
      ~{if (jukes_cantor) then "--jukes-cantor" else ""} \
      ~{if (diff_hangs) then "--diff-hangs" else ""} \
      ~{if (fix_nicks) then "--fix-nicks" else ""} \
      ~{if (use_raw_nick_freq) then "--use-raw-nick-freq" else ""} \
      ~{if (single_stranded) then "--single-stranded" else ""} \
      ~{if (theme_bw) then "--theme-bw" else ""} \
      ~{if defined(seq_length) then ("--seq-length " +  '"' + seq_length + '"') else ""} \
      ~{if (stats_only) then "--stats-only" else ""} \
      ~{if (check_r_packages) then "--check-R-packages" else ""} \
      ~{if (rescale) then "--rescale" else ""} \
      ~{if (rescale_only) then "--rescale-only" else ""} \
      ~{if defined(rescale_out) then ("--rescale-out " +  '"' + rescale_out + '"') else ""} \
      ~{if defined(rescale_length_five_p) then ("--rescale-length-5p " +  '"' + rescale_length_five_p + '"') else ""} \
      ~{if defined(rescale_length_three_p) then ("--rescale-length-3p " +  '"' + rescale_length_three_p + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sambam_file_contain: "SAM/BAM file, must contain a valid header, use '-' for\\nreading a BAM from stdin"
    reference: "Reference file in FASTA format"
    down_sample: "Downsample to a randomly selected fraction of the\\nreads (if 0 < DOWNSAMPLE < 1), or a fixed number of\\nrandomly selected reads (if DOWNSAMPLE >= 1). By\\ndefault, no downsampling is performed."
    down_sample_seed: "Seed value to use for downsampling. See documentation\\nfor py module 'random' for default behavior."
    merge_reference_sequences: "Ignore referece sequence names when tabulating reads\\n(using '*' instead). Useful for alignments with a\\nlarge number of reference sequnces, which may\\notherwise result in excessive memory or disk usage due\\nto the number of tables generated."
    length: "read length, in nucleotides to consider [70]"
    around: "nucleotides to retrieve before/after reads [10]"
    min_base_qual: "minimun base quality Phred score considered, Phred-33\\nassumed [0]"
    folder_name_store: "folder name to store results [results_FILENAME]"
    fast_a: "Write alignments in a FASTA file"
    plot_only: "Run only plotting from a valid result folder"
    quiet: "Disable any output to stdout"
    verbose: "Display progression information during parsing"
    map_damage_modules: "Override the system wide installed mapDamage module"
    ymax: "graphical y-axis limit for nucleotide misincorporation\\nfrequencies [0.3]"
    read_plot: "read length, in nucleotides, considered for plotting\\nnucleotide misincorporations [25]"
    ref_plot: "the number of reference nucleotides to consider for\\nploting base composition in the region located\\nupstream and downstream of every read [10]"
    title: "title used for plots []"
    rand: "Number of random starting points for the likelihood"
    burn: "Number of burnin iterations  [10000]"
    adjust: "Number of adjust proposal variance parameters"
    iter: "Number of final MCMC iterations  [50000]"
    forward: "Using only the 5' end of the seqs  [False]"
    reverse: "Using only the 3' end of the seqs  [False]"
    var_disp: "Variable dispersion in the overhangs  [False]"
    jukes_cantor: "Use Jukes Cantor instead of HKY85  [False]"
    diff_hangs: "The overhangs are different for 5' and 3'  [False]"
    fix_nicks: "Fix the nick frequency vector (Only C.T from the 5'\\nend and G.A from the 3' end)  [False]"
    use_raw_nick_freq: "Use the raw nick frequency vector without smoothing\\n[False]"
    single_stranded: "Single stranded protocol [False]"
    theme_bw: "Use black and white theme in post. pred. plot [False]"
    seq_length: "How long sequence to use from each side [12]"
    stats_only: "Run only statistical estimation from a valid result"
    check_r_packages: "Check if the R modules are working"
    rescale: "Rescale the quality scores in the BAM file using the\\noutput from the statistical estimation"
    rescale_only: "Run only rescaling from a valid result folder"
    rescale_out: "Write the rescaled BAM to this file"
    rescale_length_five_p: "How many bases to rescale at the 5' termini; defaults\\nto --seq-length."
    rescale_length_three_p: "How many bases to rescale at the 5' termini; defaults\\nto --seq-length."
    nostats_disabled_statistical: "--no-stats          Disabled statistical estimation, active by default"
  }
  output {
    File out_stdout = stdout()
    File out_rescale = "${in_rescale}"
  }
}