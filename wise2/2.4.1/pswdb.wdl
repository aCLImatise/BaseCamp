version 1.0

task Pswdb {
  input {
    String gG
    String eE
    String mM
    String abcAbc
    Boolean aA
    Boolean bB
    Boolean cC
    String pbaPba
    String maxMaxDesc
    String maxMaxAln
    String cutCut
    String idsIds
    String noNoHis
    Boolean serialSerial
    Boolean pthreadPthread
    String pPThrNo
    Boolean mpiMpi
    Boolean pvmPvm
    String dbDbTrace
    String sSRoutine
    Boolean dyDyDebug
    Boolean palPalDebug
    Boolean versionVersion
    Boolean silentSilent
    Boolean quietQuiet
    String errorErrorOffStd
    Boolean errorErrorLog
  }
  command <<<
    pswdb \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(abcAbc) then ("-abc " +  '"' + abcAbc + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{if defined(pbaPba) then ("-pba " +  '"' + pbaPba + '"') else ""} \
      ~{if defined(maxMaxDesc) then ("-max_desc " +  '"' + maxMaxDesc + '"') else ""} \
      ~{if defined(maxMaxAln) then ("-max_aln " +  '"' + maxMaxAln + '"') else ""} \
      ~{if defined(cutCut) then ("-cut " +  '"' + cutCut + '"') else ""} \
      ~{if defined(idsIds) then ("-ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(noNoHis) then ("-nohis " +  '"' + noNoHis + '"') else ""} \
      ~{true="-serial" false="" serialSerial} \
      ~{true="-pthread" false="" pthreadPthread} \
      ~{if defined(pPThrNo) then ("-pthr_no " +  '"' + pPThrNo + '"') else ""} \
      ~{true="-mpi" false="" mpiMpi} \
      ~{true="-pvm" false="" pvmPvm} \
      ~{if defined(dbDbTrace) then ("-dbtrace " +  '"' + dbDbTrace + '"') else ""} \
      ~{if defined(sSRoutine) then ("-sroutine " +  '"' + sSRoutine + '"') else ""} \
      ~{true="-dydebug" false="" dyDyDebug} \
      ~{true="-paldebug" false="" palPalDebug} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-silent" false="" silentSilent} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(errorErrorOffStd) then ("-erroroffstd " +  '"' + errorErrorOffStd + '"') else ""} \
      ~{true="-errorlog" false="" errorErrorLog}
  >>>
}