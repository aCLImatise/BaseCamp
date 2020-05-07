version 1.0

task MethylpyTestAllc {
  input {
    String allAllCFile
    String sampleSample
    String unmethylatedUnmethylatedControl
    File pathPathToOutput
    String numNumProcs
    Int minMinCov
    String compressCompressOutput
    String sigSigCutOff
    String sortSortMem
    String removeRemoveChrPrefix
  }
  command <<<
    methylpy test-allc \
      ~{if defined(allAllCFile) then ("--allc-file " +  '"' + allAllCFile + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(unmethylatedUnmethylatedControl) then ("--unmethylated-control " +  '"' + unmethylatedUnmethylatedControl + '"') else ""} \
      ~{if defined(pathPathToOutput) then ("--path-to-output " +  '"' + pathPathToOutput + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num-procs " +  '"' + numNumProcs + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(compressCompressOutput) then ("--compress-output " +  '"' + compressCompressOutput + '"') else ""} \
      ~{if defined(sigSigCutOff) then ("--sig-cutoff " +  '"' + sigSigCutOff + '"') else ""} \
      ~{if defined(sortSortMem) then ("--sort-mem " +  '"' + sortSortMem + '"') else ""} \
      ~{if defined(removeRemoveChrPrefix) then ("--remove-chr-prefix " +  '"' + removeRemoveChrPrefix + '"') else ""}
  >>>
}