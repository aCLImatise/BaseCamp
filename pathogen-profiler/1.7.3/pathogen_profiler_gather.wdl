version 1.0

task PathogenProfilerGather.py {
  input {
    String samplesSamples
    String dirDir
    String matrixMatrix
    String fastFastA
    String summarySummary
    Boolean itItOl
    Boolean pctPct
  }
  command <<<
    pathogen-profiler-gather.py \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{true="--itol" false="" itItOl} \
      ~{true="--pct" false="" pctPct}
  >>>
}