version 1.0

task AssemblyScan {
  input {
    String? assemblyAssemblySummaryPy
    String? assemblyAssembly
  }
  command <<<
    assembly-scan \
      ~{assemblyAssemblySummaryPy} \
      ~{assemblyAssembly}
  >>>
}