version 1.0

task ExtendSuperReadsForUniqueKmerNeighbors {
  input {
    File dirDir
    String? cmdlineCmdlineParse
  }
  command <<<
    extendSuperReadsForUniqueKmerNeighbors \
      ~{cmdlineCmdlineParse} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""}
  >>>
}