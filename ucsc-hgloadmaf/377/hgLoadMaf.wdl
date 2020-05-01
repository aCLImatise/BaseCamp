version 1.0

task HgLoadMaf {
  input {
    Boolean warnWarn
    Boolean warnWarn
    String testTest
    String pathPathPrefix
    File tmpdirTmpdir
    File loadLoadFile
    String maxMaxNamelen
    File defDefPos
    Boolean customCustom
    String? databaseDatabase
    String? tableTable
  }
  command <<<
    hgLoadMaf \
      ~{databaseDatabase} \
      ~{true="-warn" false="" warnWarn} \
      ~{true="-WARN" false="" warnWarn} \
      ~{if defined(testTest) then ("-test " +  '"' + testTest + '"') else ""} \
      ~{if defined(pathPathPrefix) then ("-pathPrefix " +  '"' + pathPathPrefix + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("-tmpDir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(loadLoadFile) then ("-loadFile " +  '"' + loadLoadFile + '"') else ""} \
      ~{if defined(maxMaxNamelen) then ("-maxNameLen " +  '"' + maxMaxNamelen + '"') else ""} \
      ~{if defined(defDefPos) then ("-defPos " +  '"' + defDefPos + '"') else ""} \
      ~{true="-custom" false="" customCustom} \
      ~{tableTable}
  >>>
}