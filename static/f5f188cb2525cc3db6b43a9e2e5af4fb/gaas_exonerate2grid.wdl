version 1.0

task GaasExonerate2grid.pl {
  input {
    String? genome
    Boolean? protein
    String? queue
    Boolean? grid
    String? quiet
    String? outdir
  }
  command <<<
    gaas_exonerate2grid.pl \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{true="--protein" false="" protein} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    genome: "The name of the genome fasta file to use as target."
    protein: "The name of the protein file to use as query."
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
  }
}