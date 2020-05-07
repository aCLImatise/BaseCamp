version 1.0

task MethylpyReidentifyDMR {
  input {
    String inputInputRmsFile
    String outputOutputFile
    Array[String]+ collapseCollapseSamples
    Array[String]+ sampleSampleCategory
    Int minMinCluster
    String sigSigCutOff
    String dmrDmrMaxDist
    Int minMinNumDms
    String residResidCutOff
    String numNumSims
    Int minMinTests
  }
  command <<<
    methylpy reidentify-DMR \
      ~{if defined(inputInputRmsFile) then ("--input-rms-file " +  '"' + inputInputRmsFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(collapseCollapseSamples) then ("--collapse-samples " +  '"' + collapseCollapseSamples + '"') else ""} \
      ~{if defined(sampleSampleCategory) then ("--sample-category " +  '"' + sampleSampleCategory + '"') else ""} \
      ~{if defined(minMinCluster) then ("--min-cluster " +  '"' + minMinCluster + '"') else ""} \
      ~{if defined(sigSigCutOff) then ("--sig-cutoff " +  '"' + sigSigCutOff + '"') else ""} \
      ~{if defined(dmrDmrMaxDist) then ("--dmr-max-dist " +  '"' + dmrDmrMaxDist + '"') else ""} \
      ~{if defined(minMinNumDms) then ("--min-num-dms " +  '"' + minMinNumDms + '"') else ""} \
      ~{if defined(residResidCutOff) then ("--resid-cutoff " +  '"' + residResidCutOff + '"') else ""} \
      ~{if defined(numNumSims) then ("--num-sims " +  '"' + numNumSims + '"') else ""} \
      ~{if defined(minMinTests) then ("--min-tests " +  '"' + minMinTests + '"') else ""}
  >>>
}