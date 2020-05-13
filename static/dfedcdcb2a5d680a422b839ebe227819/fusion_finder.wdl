version 1.0

task FusionFinder.py {
  input {
    String inputInput
    Boolean fqFq
    String samSam
    String prefixPrefix
    String clusterClusterReportCsv
    Boolean dunDunMerge5Shorter
    Int minMinLocusCoverage
    Int minMinLocusCoverageBp
    Int minMinTotalCoverage
    Int minMinDistBetweenLoci
  }
  command <<<
    fusion_finder.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--fq" false="" fqFq} \
      ~{if defined(samSam) then ("--sam " +  '"' + samSam + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(clusterClusterReportCsv) then ("--cluster_report_csv " +  '"' + clusterClusterReportCsv + '"') else ""} \
      ~{true="--dun-merge-5-shorter" false="" dunDunMerge5Shorter} \
      ~{if defined(minMinLocusCoverage) then ("--min_locus_coverage " +  '"' + minMinLocusCoverage + '"') else ""} \
      ~{if defined(minMinLocusCoverageBp) then ("--min_locus_coverage_bp " +  '"' + minMinLocusCoverageBp + '"') else ""} \
      ~{if defined(minMinTotalCoverage) then ("--min_total_coverage " +  '"' + minMinTotalCoverage + '"') else ""} \
      ~{if defined(minMinDistBetweenLoci) then ("--min_dist_between_loci " +  '"' + minMinDistBetweenLoci + '"') else ""}
  >>>
}