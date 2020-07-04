version 1.0

task Phastaf {
  input {
    Boolean? check
    Boolean? force
    Boolean? keep_files
    String? outdir
    String? db
    String? cpus
    String? i_gff
    String? min_genes
  }
  command <<<
    phastaf \
      ~{true="--check" false="" check} \
      ~{true="--force" false="" force} \
      ~{true="--keepfiles" false="" keep_files} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(i_gff) then ("--igff " +  '"' + i_gff + '"') else ""} \
      ~{if defined(min_genes) then ("--mingenes " +  '"' + min_genes + '"') else ""}
  >>>
  parameter_meta {
    check: "Check dependencies are installed"
    force: "Force overwite of existing output folder (default: OFF)"
    keep_files: "Keep intermediate files (default: OFF)"
    outdir: "Output folder (default: '')"
    db: "Diamond database of phage proteins (default: '/tmp/tmpgzbnm9m3/db/phastaf.dmnd')"
    cpus: "Number of CPUs to use (0=ALL) (default: 1)"
    i_gff: "Intergenic fuzz factor (default: 2000)"
    min_genes: "Minimum genes in cluster (default: 5)"
  }
}