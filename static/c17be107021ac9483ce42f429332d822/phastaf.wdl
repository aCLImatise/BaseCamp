version 1.0

task Phastaf {
  input {
    Boolean checkCheck
    Boolean forceForce
    Boolean keepKeepFiles
    String outdirOutdir
    String dbDb
    String cpusCpus
    String iIGff
    String minMinGenes
  }
  command <<<
    phastaf \
      ~{true="--check" false="" checkCheck} \
      ~{true="--force" false="" forceForce} \
      ~{true="--keepfiles" false="" keepKeepFiles} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(iIGff) then ("--igff " +  '"' + iIGff + '"') else ""} \
      ~{if defined(minMinGenes) then ("--mingenes " +  '"' + minMinGenes + '"') else ""}
  >>>
}