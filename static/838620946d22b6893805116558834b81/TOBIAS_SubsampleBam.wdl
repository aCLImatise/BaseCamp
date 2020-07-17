version 1.0

task TOBIASSubsampleBam {
  input {
    Boolean? bam
    Boolean? no_rand
    Boolean? start
    Boolean? end
    Boolean? step
    Boolean? cores
    Boolean? outdir
    Boolean? prefix
    Boolean? force
    Int? verbosity
  }
  command <<<
    TOBIAS SubsampleBam \
      ~{true="--bam" false="" bam} \
      ~{true="--no_rand" false="" no_rand} \
      ~{true="--start" false="" start} \
      ~{true="--end" false="" end} \
      ~{true="--step" false="" step} \
      ~{true="--cores" false="" cores} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--force" false="" force} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    bam: "Path to .bam-file"
    no_rand: "Number of randomizations (per step) (default: 3)"
    start: "Start of percent subsample (default: 0)"
    end: "End of percent subsample (default: 100)"
    step: "Step between --start and --end (default: 10)"
    cores: "Cores for multiprocessing (default: 1)"
    outdir: "Output directory (default: subsamplebam_output)"
    prefix: "Prefix for output files (default: prefix of .bam)"
    force: "Force creation of subsampled .bam-files (default: only create if not existing)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
  }
}