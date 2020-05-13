version 1.0

task GemBS {
  input {
    String loglevelLoglevel
    String jsonJsonFile
    String dirDir
  }
  command <<<
    gemBS \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(jsonJsonFile) then ("--json-file " +  '"' + jsonJsonFile + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""}
  >>>
}