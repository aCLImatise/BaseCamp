version 1.0

task KinamineYShaker {
  input {
    String jarJar
    String? javaJava
    String? proteinProteinPilotDistinctPeptideSummary
    String? fastFastA
    String? outputOutputDir
    String? fdrFdr
  }
  command <<<
    KinamineY-shaker \
      ~{javaJava} \
      ~{if defined(jarJar) then ("-jar " +  '"' + jarJar + '"') else ""} \
      ~{proteinProteinPilotDistinctPeptideSummary} \
      ~{fastFastA} \
      ~{outputOutputDir} \
      ~{fdrFdr}
  >>>
}