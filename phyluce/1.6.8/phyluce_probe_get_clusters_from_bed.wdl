version 1.0

task PhyluceProbeGetClustersFromBed {
  input {
    Directory? bed
    Directory? outdir
    Array[String] files
  }
  command <<<
    phyluce_probe_get_clusters_from_bed \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""}
  >>>
  parameter_meta {
    bed: "The BED directory you want to search for clusters"
    outdir: "The output directory to store results"
    files: "Specific files in the directory you want to process\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}