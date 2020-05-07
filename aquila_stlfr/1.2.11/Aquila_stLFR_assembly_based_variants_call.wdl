version 1.0

task AquilaStLFRAssemblyBasedVariantsCall {
  input {
    String chrChrStart
    String chrChrEnd
    String varVarSize
    String allAllRegionsFlag
    String cleanCleanFlag
    String numNumOfThreads
    String assemblyAssemblyDir
    String outOutDir
    String refRefFile
  }
  command <<<
    Aquila_stLFR_assembly_based_variants_call \
      ~{if defined(chrChrStart) then ("--chr_start " +  '"' + chrChrStart + '"') else ""} \
      ~{if defined(chrChrEnd) then ("--chr_end " +  '"' + chrChrEnd + '"') else ""} \
      ~{if defined(varVarSize) then ("--var_size " +  '"' + varVarSize + '"') else ""} \
      ~{if defined(allAllRegionsFlag) then ("--all_regions_flag " +  '"' + allAllRegionsFlag + '"') else ""} \
      ~{if defined(cleanCleanFlag) then ("--clean_flag " +  '"' + cleanCleanFlag + '"') else ""} \
      ~{if defined(numNumOfThreads) then ("--num_of_threads " +  '"' + numNumOfThreads + '"') else ""} \
      ~{if defined(assemblyAssemblyDir) then ("--assembly_dir " +  '"' + assemblyAssemblyDir + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(refRefFile) then ("--ref_file " +  '"' + refRefFile + '"') else ""}
  >>>
}