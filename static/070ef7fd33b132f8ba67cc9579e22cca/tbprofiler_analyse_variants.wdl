version 1.0

task TbprofilerAnalyseVariants.py {
  input {
    String mutationsMutations
    String metaMeta
    String samplesSamples
    String dirDir
    String dbDb
    String drugsDrugs
  }
  command <<<
    tbprofiler_analyse_variants.py \
      ~{if defined(mutationsMutations) then ("--mutations " +  '"' + mutationsMutations + '"') else ""} \
      ~{if defined(metaMeta) then ("--meta " +  '"' + metaMeta + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(drugsDrugs) then ("--drugs " +  '"' + drugsDrugs + '"') else ""}
  >>>
}