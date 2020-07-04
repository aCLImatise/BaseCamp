version 1.0

task GaasBlastp2grid.pl {
  input {
    String? fast_a
    Boolean? db
    Boolean? nb_seq
    Boolean? eval
    Boolean? chunk_size
    String? queue
    Boolean? grid
    String? quiet
    String? outdir
  }
  command <<<
    gaas_blastp2grid.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--db" false="" db} \
      ~{true="--nb_seq" false="" nb_seq} \
      ~{true="--eval" false="" eval} \
      ~{true="--chunk_size" false="" chunk_size} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "The name of the protein fasta file to use as query."
    db: "The name of the database use to blast"
    nb_seq: "The number of proteins contained in the db. Useful to cheat on the database size. (OrthoMCL aggregation as example). If not provided, the current database size is used."
    eval: "The maximu evalue of the sequences kept in the result"
    chunk_size: "The number of sequence by job. If not provided, default size will be 500."
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
  }
}