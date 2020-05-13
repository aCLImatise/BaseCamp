version 1.0

task GetGffInfoCov {
  input {
    File referenceReference
    Boolean jsonJsonOut
    Boolean strandStrandSpecific
    Boolean renameRename
    Boolean progressProgress
  }
  command <<<
    get-gff-info cov \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--json-out" false="" jsonJsonOut} \
      ~{true="--strand-specific" false="" strandStrandSpecific} \
      ~{true="--rename" false="" renameRename} \
      ~{true="--progress" false="" progressProgress}
  >>>
}