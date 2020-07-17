version 1.0

task GaasTransposonPSI2grid.pl {
  input {
    String? queue
    Boolean? grid
    String? quiet
    String? outdir
    String? f
  }
  command <<<
    gaas_transposonPSI2grid.pl \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
    f: ""
  }
}