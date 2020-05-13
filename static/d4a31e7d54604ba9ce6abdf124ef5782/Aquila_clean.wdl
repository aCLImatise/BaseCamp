version 1.0

task AquilaClean {
  input {
    String assemblyAssemblyDir
    String chrChrStart
    String chrChrEnd
    String numNumOfThreads
  }
  command <<<
    Aquila_clean \
      ~{if defined(assemblyAssemblyDir) then ("--assembly_dir " +  '"' + assemblyAssemblyDir + '"') else ""} \
      ~{if defined(chrChrStart) then ("--chr_start " +  '"' + chrChrStart + '"') else ""} \
      ~{if defined(chrChrEnd) then ("--chr_end " +  '"' + chrChrEnd + '"') else ""} \
      ~{if defined(numNumOfThreads) then ("--num_of_threads " +  '"' + numNumOfThreads + '"') else ""}
  >>>
}