version 1.0

task TOBIASSubsampleBam {
  input {
    Boolean? bam
    Boolean? no_rand
    Boolean? start
    Boolean? end
    Boolean? step
    Boolean? cores
    Directory? outdir
    Boolean? prefix
    Boolean? force
    Int? verbosity
  }
  command <<<
    TOBIAS SubsampleBam \
      ~{if (bam) then "--bam" else ""} \
      ~{if (no_rand) then "--no_rand" else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (end) then "--end" else ""} \
      ~{if (step) then "--step" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0"
  }
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
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4:\\ndebug, 5: spam) (default: 3)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}