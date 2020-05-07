version 1.0

task ProkkaClustersToHmm {
  input {
    Boolean verboseVerbose
    String dirDir
    String libLib
    String outdirOutdir
  }
  command <<<
    prokka-clusters_to_hmm \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(libLib) then ("--lib " +  '"' + libLib + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}