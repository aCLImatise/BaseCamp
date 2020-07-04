version 1.0

task CatalogueErrors {
  input {
    String? bed
    String? threads
    String? outdir
    String bam
  }
  command <<<
    catalogue_errors \
      ~{bam} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    bed: ".bed file of reference regions to include. (default: None)"
    threads: "Number of threads for parallel execution. (default: 1)"
    outdir: "Output directory. (default: error_catalogue)"
    bam: "Input alignments (aligned to ref)."
  }
}