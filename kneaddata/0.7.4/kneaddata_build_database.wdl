version 1.0

task KneaddataBuildDatabase {
  input {
    String outputOutputPrefix
    String bmBmToolPath
    String srSrPrismPath
    String makeMakeBlastDbPath
    String logdirLogdir
    String? fastFastA
  }
  command <<<
    kneaddata_build_database \
      ~{fastFastA} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(bmBmToolPath) then ("--bmtool-path " +  '"' + bmBmToolPath + '"') else ""} \
      ~{if defined(srSrPrismPath) then ("--srprism-path " +  '"' + srSrPrismPath + '"') else ""} \
      ~{if defined(makeMakeBlastDbPath) then ("--makeblastdb-path " +  '"' + makeMakeBlastDbPath + '"') else ""} \
      ~{if defined(logdirLogdir) then ("--logdir " +  '"' + logdirLogdir + '"') else ""}
  >>>
}