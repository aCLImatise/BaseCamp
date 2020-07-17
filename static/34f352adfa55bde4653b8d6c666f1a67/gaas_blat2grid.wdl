version 1.0

task GaasBlat2grid.pl {
  input {
    String? fast_a
    Boolean? db
    Boolean? chunk_size
    String? queue
    Boolean? grid
    String? quiet
    String? outdir
  }
  command <<<
    gaas_blat2grid.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--db" false="" db} \
      ~{true="--chunk_size" false="" chunk_size} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "The name of the nucleotide/protein fasta file to use as query."
    db: "The name of the database use to blat"
    chunk_size: "The number of sequence by job. If not provided, default size will be 500."
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
  }
}