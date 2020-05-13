version 1.0

task MobCluster {
  input {
    String modeMode
    String outdirOutdir
    String inInFile
    String refRefClusterFile
    String refRefFastAFile
    String refRefMashDb
    String numNumThreads
    Boolean overwriteOverwrite
  }
  command <<<
    mob_cluster \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(refRefClusterFile) then ("--ref_cluster_file " +  '"' + refRefClusterFile + '"') else ""} \
      ~{if defined(refRefFastAFile) then ("--ref_fasta_file " +  '"' + refRefFastAFile + '"') else ""} \
      ~{if defined(refRefMashDb) then ("--ref_mash_db " +  '"' + refRefMashDb + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--overwrite" false="" overwriteOverwrite}
  >>>
}