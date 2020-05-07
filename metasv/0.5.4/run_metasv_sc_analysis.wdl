version 1.0

task RunMetasvScAnalysis.py {
  input {
    String overlapOverlapRatio
    String meanMeanReadLength
    String meanMeanReadCoverage
    Int minMinInsCovFrac
    Int maxMaxInsCovFrac
    String assemblyAssemblyMaxTools
    String otherOtherScale
  }
  command <<<
    run_metasv_sc_analysis.py \
      ~{if defined(overlapOverlapRatio) then ("--overlap_ratio " +  '"' + overlapOverlapRatio + '"') else ""} \
      ~{if defined(meanMeanReadLength) then ("--mean_read_length " +  '"' + meanMeanReadLength + '"') else ""} \
      ~{if defined(meanMeanReadCoverage) then ("--mean_read_coverage " +  '"' + meanMeanReadCoverage + '"') else ""} \
      ~{if defined(minMinInsCovFrac) then ("--min_ins_cov_frac " +  '"' + minMinInsCovFrac + '"') else ""} \
      ~{if defined(maxMaxInsCovFrac) then ("--max_ins_cov_frac " +  '"' + maxMaxInsCovFrac + '"') else ""} \
      ~{if defined(assemblyAssemblyMaxTools) then ("--assembly_max_tools " +  '"' + assemblyAssemblyMaxTools + '"') else ""} \
      ~{if defined(otherOtherScale) then ("--other_scale " +  '"' + otherOtherScale + '"') else ""}
  >>>
}