version 1.0

task Packagemanager {
  input {
    String listList
    String addAdd
    String delDel
    String versionVersion
    String useUseAppDir
    String dirDir
    String updateUpdate
    String updateUpdateNow
  }
  command <<<
    packagemanager \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""} \
      ~{if defined(addAdd) then ("-add " +  '"' + addAdd + '"') else ""} \
      ~{if defined(delDel) then ("-del " +  '"' + delDel + '"') else ""} \
      ~{if defined(versionVersion) then ("-version " +  '"' + versionVersion + '"') else ""} \
      ~{if defined(useUseAppDir) then ("-useAppDir " +  '"' + useUseAppDir + '"') else ""} \
      ~{if defined(dirDir) then ("-dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(updateUpdate) then ("-update " +  '"' + updateUpdate + '"') else ""} \
      ~{if defined(updateUpdateNow) then ("-updatenow " +  '"' + updateUpdateNow + '"') else ""}
  >>>
}