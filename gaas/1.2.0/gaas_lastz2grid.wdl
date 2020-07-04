version 1.0

task GaasLastz2grid.pl {
  input {
    String? query
    Boolean? target
    String? queue
    Boolean? grid
    String? quiet
    String? outdir
    String? f
    String? db
    String gaas_blat_two_grid_do_tpl
  }
  command <<<
    gaas_lastz2grid.pl \
      ~{gaas_blat_two_grid_do_tpl} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{true="--target" false="" target} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{true="--grid" false="" grid} \
      ~{if defined(quiet) then ("--quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    query: "name of the query genome file."
    target: "The name of the target genome file."
    queue: "you want to define a particular queue to run the jobs"
    grid: "Define which grid to use, Slurm, Lsf or None. Default = Slurm."
    quiet: "Quiet mode"
    outdir: "The name of the output directory."
    f: ""
    db: ""
    gaas_blat_two_grid_do_tpl: ""
  }
}