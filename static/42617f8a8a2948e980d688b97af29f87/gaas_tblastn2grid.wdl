version 1.0

task GaasTblastn2grid.pl {
  input {
    String? fast_a
    Boolean? db
    Boolean? chunk_size
    Boolean? nb_seq
    Boolean? eval
    String? queue
    Boolean? grid
    String? quiet
    Boolean? outdir
    String? chun_ck
  }
  command <<<
    gaas_tblastn2grid.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--db" false="" db} \
      ~{true="--chunk_size" false="" chunk_size} \
      ~{true="--nb_seq" false="" nb_seq} \
      ~{true="--eval" false="" eval} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{true="--outdir" false="" outdir} \
      ~{if defined(chun_ck) then ("--chunck " +  '"' + chun_ck + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "name of the protein file to read."
    db: "The name of the database use to blast."
    chunk_size: "The number of sequence by job. If not provided, default size will be 500."
    nb_seq: "The number of proteins contained in the db. Useful to cheat on the database size. (OrthoMCL aggregation as example). If not provided, the current database size is used."
    eval: "The evalue of the sequences kept in the result"
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
    chun_ck: ""
  }
}