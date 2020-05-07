version 1.0

task DropletutilsEmptyDrops.R {
  input {
    String inputInputObjectFile
    String lowerLower
    String niteNiteRs
    String testTestAmbient
    String ignoreIgnore
    String retainRetain
    String filterFilterEmpty
    String filterFilterFdr
    String outputOutputTextFile
    String outputOutputObjectFile
  }
  command <<<
    dropletutils-empty-drops.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(lowerLower) then ("--lower " +  '"' + lowerLower + '"') else ""} \
      ~{if defined(niteNiteRs) then ("--niters " +  '"' + niteNiteRs + '"') else ""} \
      ~{if defined(testTestAmbient) then ("--test-ambient " +  '"' + testTestAmbient + '"') else ""} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{if defined(retainRetain) then ("--retain " +  '"' + retainRetain + '"') else ""} \
      ~{if defined(filterFilterEmpty) then ("--filter-empty " +  '"' + filterFilterEmpty + '"') else ""} \
      ~{if defined(filterFilterFdr) then ("--filter-fdr " +  '"' + filterFilterFdr + '"') else ""} \
      ~{if defined(outputOutputTextFile) then ("--output-text-file " +  '"' + outputOutputTextFile + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}