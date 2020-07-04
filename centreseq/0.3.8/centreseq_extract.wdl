version 1.0

task CentreseqExtract {
  input {
    File? in_dir
    File? outdir
    String? cluster_representative
  }
  command <<<
    centreseq extract \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(cluster_representative) then ("--cluster_representative " +  '"' + cluster_representative + '"') else ""}
  >>>
  parameter_meta {
    in_dir: "Path to your centreseq output directory [required]"
    outdir: "Root directory to store all output files [required]"
    cluster_representative: "Name of the target cluster representative e.g. \"Typhi.2299.BMH_00195\"  [required]"
  }
}