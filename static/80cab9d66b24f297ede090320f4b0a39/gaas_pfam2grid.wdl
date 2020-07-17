version 1.0

task GaasPfam2grid.pl {
  input {
    String? fast_a
    Boolean? chunk_size
    Boolean? hmm
    String? queue
    Boolean? grid
    String? quiet
    String? outdir
  }
  command <<<
    gaas_pfam2grid.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--chunk_size" false="" chunk_size} \
      ~{true="--hmm" false="" hmm} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "The name of the fasta file to read."
    chunk_size: "We create chunks with a maximum of $chunk_size sequences. By default 500."
    hmm: "File containing the pfam hmm models"
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
  }
}