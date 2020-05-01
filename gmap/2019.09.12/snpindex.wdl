version 1.0

task Snpindex {
  input {
    Directory sourceSourceDir
    String dbDb
    Int kmKmEr
    Int samplingSampling
    Directory destdirDestdir
    String snpsSnpsDb
    Int maxMaxWarnings
    String? optionsOptions
    String? iIItFile
  }
  command <<<
    snpindex \
      ~{optionsOptions} \
      ~{if defined(sourceSourceDir) then ("--sourcedir " +  '"' + sourceSourceDir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(samplingSampling) then ("--sampling " +  '"' + samplingSampling + '"') else ""} \
      ~{if defined(destdirDestdir) then ("--destdir " +  '"' + destdirDestdir + '"') else ""} \
      ~{if defined(snpsSnpsDb) then ("--snpsdb " +  '"' + snpsSnpsDb + '"') else ""} \
      ~{if defined(maxMaxWarnings) then ("--max-warnings " +  '"' + maxMaxWarnings + '"') else ""} \
      ~{iIItFile}
  >>>
}