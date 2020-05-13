version 1.0

task TerminusGroup {
  input {
    String dirDir
    Int minMinSpread
    String outOut
    String seedSeed
    String toleranceTolerance
  }
  command <<<
    terminus group \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(minMinSpread) then ("--min-spread " +  '"' + minMinSpread + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(toleranceTolerance) then ("--tolerance " +  '"' + toleranceTolerance + '"') else ""}
  >>>
}