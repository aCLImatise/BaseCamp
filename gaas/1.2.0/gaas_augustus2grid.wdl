version 1.0

task GaasAugustus2grid.pl {
  input {
    String? genome
    String? hints
    Boolean? species
    String? queue
    Boolean? grid
    String? quiet
    String? outdir
    String? f
  }
  command <<<
    gaas_augustus2grid.pl \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(hints) then ("--hints " +  '"' + hints + '"') else ""} \
      ~{true="--species" false="" species} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    genome: "The name of the genome fasta file."
    hints: "hints file (e.g Intron)"
    species: "Species name for the hmm profile to use within Augustus"
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
    f: ""
  }
}