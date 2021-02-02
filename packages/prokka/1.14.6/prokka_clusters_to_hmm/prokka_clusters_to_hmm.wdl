version 1.0

task ProkkaclustersToHmm {
  input {
    Boolean? verbose
    Directory? dir
    String? lib
    Directory? outdir
  }
  command <<<
    prokka_clusters_to_hmm \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(lib) then ("--lib " +  '"' + lib + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    verbose: "!      Verbose output (default '0')."
    dir: "Source CLUSTERS folder (default '/bio/data/CLUSTERS/latest')."
    lib: "Library: PHA PRK ... (default '')."
    outdir: "Output folder for .hmm files and indices (default '.')."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}