version 1.0

task GaasRfam2grid.pl {
  input {
    String? fast_a
    Boolean? cm
    Boolean? grid
    String? queue
    String? quiet
    String? outdir
  }
  command <<<
    gaas_rfam2grid.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--cm" false="" cm} \
      ~{true="--grid" false="" grid} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "The name of the genome file to read."
    cm: "File containing the covariance models (cm) used by rfam"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    queue: "you want to define a particular queue to run the jobs"
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
  }
}