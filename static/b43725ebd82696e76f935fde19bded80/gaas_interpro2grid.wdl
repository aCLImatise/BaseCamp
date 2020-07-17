version 1.0

task GaasInterpro2grid.pl {
  input {
    String? fast_a
    Boolean? chunk_size
    String? queue
    Boolean? grid
    String? quiet
    String? outdir
  }
  command <<<
    gaas_interpro2grid.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--chunk_size" false="" chunk_size} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "The name of the protein fasta file to use as query."
    chunk_size: "The number of sequence by job. If not provided, default size will be 500."
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
  }
}