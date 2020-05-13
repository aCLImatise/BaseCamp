version 1.0

task ExtendSuperReadsBasedOnUniqueExtensions {
  input {
    File dirDir
    Int merMer
    String? cmdlineCmdlineParse
  }
  command <<<
    extendSuperReadsBasedOnUniqueExtensions \
      ~{cmdlineCmdlineParse} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(merMer) then ("--mer " +  '"' + merMer + '"') else ""}
  >>>
}