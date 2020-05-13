version 1.0

task CathAssignDomains {
  input {
    Boolean vV
    String svmSvmLightRbfFile
    String fileFileListFile
    String sfSfOfDomainFile
    String forbiddenForbiddenNode
  }
  command <<<
    cath-assign-domains \
      ~{true="-v" false="" vV} \
      ~{if defined(svmSvmLightRbfFile) then ("--svmlight-rbf-file " +  '"' + svmSvmLightRbfFile + '"') else ""} \
      ~{if defined(fileFileListFile) then ("--filelist-file " +  '"' + fileFileListFile + '"') else ""} \
      ~{if defined(sfSfOfDomainFile) then ("--sf-of-domain-file " +  '"' + sfSfOfDomainFile + '"') else ""} \
      ~{if defined(forbiddenForbiddenNode) then ("--forbidden-node " +  '"' + forbiddenForbiddenNode + '"') else ""}
  >>>
}