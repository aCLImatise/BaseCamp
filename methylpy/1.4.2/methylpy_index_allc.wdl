version 1.0

task MethylpyIndexAllc {
  input {
    Array[String]+ allAllCFiles
    String numNumProcs
    String reReIndex
  }
  command <<<
    methylpy index-allc \
      ~{if defined(allAllCFiles) then ("--allc-files " +  '"' + allAllCFiles + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num-procs " +  '"' + numNumProcs + '"') else ""} \
      ~{if defined(reReIndex) then ("--reindex " +  '"' + reReIndex + '"') else ""}
  >>>
}