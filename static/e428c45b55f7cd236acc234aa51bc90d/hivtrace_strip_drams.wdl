version 1.0

task HivtraceStripDrams {
  input {
    String iI
    String oO
    String dD
  }
  command <<<
    hivtrace_strip_drams \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}