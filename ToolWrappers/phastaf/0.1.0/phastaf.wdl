version 1.0

task Phastaf {
  input {
    Boolean? check
    Directory? force
    Boolean? keep_files
    Directory? outdir
    String? db
    Int? cpus
    Int? i_gff
    Int? min_genes
  }
  command <<<
    phastaf \
      ~{if (check) then "--check" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (keep_files) then "--keepfiles" else ""} \
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
    db: "Diamond database of phage proteins (default: '/usr/local/db/phastaf.dmnd')"
    cpus: "Number of CPUs to use (0=ALL) (default: 1)"
    i_gff: "Intergenic fuzz factor (default: 2000)"
    min_genes: "Minimum genes in cluster (default: 5)"
  }
  output {
    File out_stdout = stdout()
    Directory out_force = "${in_force}"
    Directory out_outdir = "${in_outdir}"
  }
}