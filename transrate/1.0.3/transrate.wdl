version 1.0

task Transrate {
  input {
    String assemblyAssembly
    String leftLeft
    String rightRight
    String referenceReference
    String threadsThreads
    String mergeMergeAssemblies
    String outputOutput
    String loglevelLoglevel
    String installInstallDeps
    Boolean examplesExamples
  }
  command <<<
    transrate \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(leftLeft) then ("--left " +  '"' + leftLeft + '"') else ""} \
      ~{if defined(rightRight) then ("--right " +  '"' + rightRight + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(mergeMergeAssemblies) then ("--merge-assemblies " +  '"' + mergeMergeAssemblies + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(installInstallDeps) then ("--install-deps " +  '"' + installInstallDeps + '"') else ""} \
      ~{true="--examples" false="" examplesExamples}
  >>>
}