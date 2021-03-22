version 1.0

task ClusterSitesByOverlappy {
  input {
    Boolean? bedfiles_id_th
    Directory? outdir
    String? var_2
  }
  command <<<
    cluster_sites_by_overlap_py \
      ~{var_2} \
      ~{if (bedfiles_id_th) then "--bedfiles" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0"
  }
  parameter_meta {
    bedfiles_id_th: "[BEDFILES [BEDFILES ...]]\\nBedfiles with ID in the 4th column"
    outdir: "Output directory (default: bedfile_clustering_output)"
    var_2: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}