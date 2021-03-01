version 1.0

task CatalogueErrors {
  input {
    File? bed
    Int? threads
    Directory? outdir
    String bam
  }
  command <<<
    catalogue_errors \
      ~{bam} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: ".bed file of reference regions to include. (default:\\nNone)"
    threads: "Number of threads for parallel execution. (default: 1)"
    outdir: "Output directory. (default: error_catalogue)\\n"
    bam: "Input alignments (aligned to ref)."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}