version 1.0

task GaasScipio2grid.pl {
  input {
    String? queue
    Boolean? grid
    String? outdir
    String? genome
    String? protein
    String gaas_scipio_grid_do_tpl
  }
  command <<<
    gaas_scipio2grid.pl \
      ~{gaas_scipio_grid_do_tpl} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""}
  >>>
  parameter_meta {
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    outdir: "The name of the output directory."
    genome: ""
    protein: ""
    gaas_scipio_grid_do_tpl: ""
  }
}