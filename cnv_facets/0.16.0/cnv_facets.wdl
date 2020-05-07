version 1.0

task CnvFacets.R {
  input {
    String outOut
    String snpSnpTumour
    String snpSnpNormal
    String snpSnpVcf
    String snpSnpMapq
    String snpSnpBaq
    Boolean snpSnpCountOrphans
    String snpSnpNprocs
    String pilePileUp
    String depthDepth
    String targetsTargets
    String cvalCval
    String nNBhdSnp
    String annotationAnnotation
    String gGBuild
    Boolean unmatchedUnmatched
    Boolean noNoCovPlot
    String rndRndSeed
  }
  command <<<
    cnv_facets.R \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(snpSnpTumour) then ("--snp-tumour " +  '"' + snpSnpTumour + '"') else ""} \
      ~{if defined(snpSnpNormal) then ("--snp-normal " +  '"' + snpSnpNormal + '"') else ""} \
      ~{if defined(snpSnpVcf) then ("--snp-vcf " +  '"' + snpSnpVcf + '"') else ""} \
      ~{if defined(snpSnpMapq) then ("--snp-mapq " +  '"' + snpSnpMapq + '"') else ""} \
      ~{if defined(snpSnpBaq) then ("--snp-baq " +  '"' + snpSnpBaq + '"') else ""} \
      ~{true="--snp-count-orphans" false="" snpSnpCountOrphans} \
      ~{if defined(snpSnpNprocs) then ("--snp-nprocs " +  '"' + snpSnpNprocs + '"') else ""} \
      ~{if defined(pilePileUp) then ("--pileup " +  '"' + pilePileUp + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(cvalCval) then ("--cval " +  '"' + cvalCval + '"') else ""} \
      ~{if defined(nNBhdSnp) then ("--nbhd-snp " +  '"' + nNBhdSnp + '"') else ""} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(gGBuild) then ("--gbuild " +  '"' + gGBuild + '"') else ""} \
      ~{true="--unmatched" false="" unmatchedUnmatched} \
      ~{true="--no-cov-plot" false="" noNoCovPlot} \
      ~{if defined(rndRndSeed) then ("--rnd-seed " +  '"' + rndRndSeed + '"') else ""}
  >>>
}