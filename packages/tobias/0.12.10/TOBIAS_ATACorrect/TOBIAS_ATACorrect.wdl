version 1.0

task TOBIASATACorrect {
  input {
    File? bam
    File? genome
    File? peaks
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
    File? prefix
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
      ~{if (split_strands) then "--split-strands" else ""} \
      ~{if (norm_off) then "--norm-off" else ""} \
      ~{if (track_off) then "--track-off" else ""} \
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
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0"
  }
  parameter_meta {
    bam: "A .bam-file containing reads to be corrected"
    genome: "A .fasta-file containing whole genomic sequence"
    peaks: "A .bed-file containing ATAC peak regions"
    regions_in: "Input regions for estimating bias (default: regions not\\nin peaks.bed)"
    regions_out: "Output regions (default: peaks.bed)"
    blacklist: "Blacklisted regions in .bed-format (default: None)"
    extend: "Extend output regions with basepairs\\nupstream/downstream (default: 100)"
    split_strands: "Write out tracks per strand"
    norm_off: "Switches off normalization based on number of reads"
    track_off: "[<track> [<track> ...]]\\nSwitch off writing of individual .bigwig-tracks\\n(uncorrected/bias/expected/corrected)"
    k_flank: "Flank +/- of cutsite to estimate bias from (default:\\n12)"
    read_shift: "<int>         Read shift for forward and reverse reads (default: 4"
    bg_shift: "Read shift for estimation of background frequencies\\n(default: 100)"
    window: "Window size for calculating expected signal (default:\\n100)"
    score_mat: "Type of matrix to use for bias estimation (PWM/DWM)\\n(default: DWM)"
    prefix: "Prefix for output files (default: same as .bam file)"
    outdir: "Output directory for files (default: current working\\ndirectory)"
    cores: "Number of cores to use for computation (default: 1)"
    split: "Split of multiprocessing jobs (default: 100)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings,\\n2: info, 3: stats, 4: debug, 5: spam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    Directory out_outdir = "${in_outdir}"
  }
}