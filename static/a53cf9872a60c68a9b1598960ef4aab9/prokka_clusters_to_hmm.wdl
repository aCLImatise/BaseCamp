version 1.0

task ProkkaClustersToHmm {
  input {
    Boolean? verbose
    String? dir
    String? lib
    String? outdir
  }
  command <<<
    prokka-clusters_to_hmm \
      ~{true="--verbose" false="" verbose} \
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
}