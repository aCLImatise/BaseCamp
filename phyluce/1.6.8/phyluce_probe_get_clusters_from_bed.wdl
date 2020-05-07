version 1.0

task PhyluceProbeGetClustersFromBed {
  input {
    String bedBed
    String outdirOutdir
    Array[File]+ filesFiles
  }
  command <<<
    phyluce_probe_get_clusters_from_bed \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(filesFiles) then ("--files " +  '"' + filesFiles + '"') else ""}
  >>>
}