version 1.0

task TophatRecondition {
  input {
    String logLogFile
    String mappedMappedFile
    Boolean quietQuiet
    String resultResultDir
    String unmappedUnmappedFile
    String? topTopHatResultDir
  }
  command <<<
    tophat-recondition \
      ~{topTopHatResultDir} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(mappedMappedFile) then ("--mapped-file " +  '"' + mappedMappedFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(resultResultDir) then ("--result_dir " +  '"' + resultResultDir + '"') else ""} \
      ~{if defined(unmappedUnmappedFile) then ("--unmapped-file " +  '"' + unmappedUnmappedFile + '"') else ""}
  >>>
}