version 1.0

task Maker {
  input {
    Boolean genomeGenome
    Boolean rmRmOff
    Boolean datastoreDatastore
    Boolean oldOldStruct
    Boolean baseBase
    Boolean triesTries
    Boolean cpusCpus
    Boolean mpiMpi
    Boolean forceForce
    Boolean againAgain
    Boolean quietQuiet
    Boolean qqQq
    Boolean dsDsIndex
    Boolean noNoLock
    Boolean tmpTmp
    Boolean ctlCtl
    Boolean optsOpts
    Boolean bBOpts
    Boolean exeExe
    Boolean mMWas
    Boolean versionVersion
    String? noNoDataStore
  }
  command <<<
    maker \
      ~{noNoDataStore} \
      ~{true="-genome" false="" genomeGenome} \
      ~{true="-RM_off" false="" rmRmOff} \
      ~{true="-datastore" false="" datastoreDatastore} \
      ~{true="-old_struct" false="" oldOldStruct} \
      ~{true="-base" false="" baseBase} \
      ~{true="-tries" false="" triesTries} \
      ~{true="-cpus" false="" cpusCpus} \
      ~{true="-mpi" false="" mpiMpi} \
      ~{true="-force" false="" forceForce} \
      ~{true="-again" false="" againAgain} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-qq" false="" qqQq} \
      ~{true="-dsindex" false="" dsDsIndex} \
      ~{true="-nolock" false="" noNoLock} \
      ~{true="-TMP" false="" tmpTmp} \
      ~{true="-CTL" false="" ctlCtl} \
      ~{true="-OPTS" false="" optsOpts} \
      ~{true="-BOPTS" false="" bBOpts} \
      ~{true="-EXE" false="" exeExe} \
      ~{true="-MWAS" false="" mMWas} \
      ~{true="-version" false="" versionVersion}
  >>>
}