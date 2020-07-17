version 1.0

task TOBIASATACorrect {
  input {
    String? bam
    String? genome
    String? peaks
    String? regions_in
    String? regions_out
    String? blacklist
    Int? extend
    Boolean? split_strands
    Boolean? norm_off
    Boolean? track_off
    Int? k_flank
    Int? read_shift
    Int? bg_shift
    Int? window
    String? score_mat
    String? prefix
    Directory? outdir
    Int? cores
    Int? split
    Int? verbosity
  }
  command <<<
    TOBIAS ATACorrect \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(peaks) then ("--peaks " +  '"' + peaks + '"') else ""} \
      ~{if defined(regions_in) then ("--regions-in " +  '"' + regions_in + '"') else ""} \
      ~{if defined(regions_out) then ("--regions-out " +  '"' + regions_out + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(extend) then ("--extend " +  '"' + extend + '"') else ""} \
      ~{true="--split-strands" false="" split_strands} \
      ~{true="--norm-off" false="" norm_off} \
      ~{true="--track-off" false="" track_off} \
      ~{if defined(k_flank) then ("--k_flank " +  '"' + k_flank + '"') else ""} \
      ~{if defined(read_shift) then ("--read_shift " +  '"' + read_shift + '"') else ""} \
      ~{if defined(bg_shift) then ("--bg_shift " +  '"' + bg_shift + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(score_mat) then ("--score_mat " +  '"' + score_mat + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    bam: "A .bam-file containing reads to be corrected"
    genome: "A .fasta-file containing whole genomic sequence"
    peaks: "A .bed-file containing ATAC peak regions"
    regions_in: "Input regions for estimating bias (default: regions not in peaks.bed)"
    regions_out: "Output regions (default: peaks.bed)"
    blacklist: "Blacklisted regions in .bed-format (default: None)"
    extend: "Extend output regions with basepairs upstream/downstream (default: 100)"
    split_strands: "Write out tracks per strand"
    norm_off: "Switches off normalization based on number of reads"
    track_off: "[<track> [<track> ...]] Switch off writing of individual .bigwig-tracks (uncorrected/bias/expected/corrected)"
    k_flank: "Flank +/- of cutsite to estimate bias from (default: 12)"
    read_shift: "<int>         Read shift for forward and reverse reads (default: 4 -5)"
    bg_shift: "Read shift for estimation of background frequencies (default: 100)"
    window: "Window size for calculating expected signal (default: 100)"
    score_mat: "Type of matrix to use for bias estimation (PWM/DWM) (default: DWM)"
    prefix: "Prefix for output files (default: same as .bam file)"
    outdir: "Output directory for files (default: current working directory)"
    cores: "Number of cores to use for computation (default: 1)"
    split: "Split of multiprocessing jobs (default: 100)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}