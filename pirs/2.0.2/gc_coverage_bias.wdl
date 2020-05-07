version 1.0

task GcCoverageBias {
  input {
    String rR
    String cC
    String oO
    String wW
    Boolean gcGcDump
    Boolean depDepWinDump
  }
  command <<<
    gc_coverage_bias \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="--gcdump" false="" gcGcDump} \
      ~{true="--depwindump" false="" depDepWinDump}
  >>>
}