version 1.0

task CentreseqExtract {
  input {
    File inInDir
    File outdirOutdir
    String clusterClusterRepresentative
  }
  command <<<
    centreseq extract \
      ~{if defined(inInDir) then ("--indir " +  '"' + inInDir + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(clusterClusterRepresentative) then ("--cluster_representative " +  '"' + clusterClusterRepresentative + '"') else ""}
  >>>
}