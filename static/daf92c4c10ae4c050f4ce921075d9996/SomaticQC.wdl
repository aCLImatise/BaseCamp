version 1.0

task SomaticQC {
  input {
    File tumorTumorBam
    File normalNormalBam
    File somaticSomaticVcf
    File outOut
    File linksLinks
    File targetTargetBed
    File targetTargetExons
    File blacklistBlacklist
    File tsgTsgBed
    File refRef
    Boolean skipSkipPlots
    String buildBuild
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    SomaticQC \
      ~{if defined(tumorTumorBam) then ("-tumor_bam " +  '"' + tumorTumorBam + '"') else ""} \
      ~{if defined(normalNormalBam) then ("-normal_bam " +  '"' + normalNormalBam + '"') else ""} \
      ~{if defined(somaticSomaticVcf) then ("-somatic_vcf " +  '"' + somaticSomaticVcf + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(linksLinks) then ("-links " +  '"' + linksLinks + '"') else ""} \
      ~{if defined(targetTargetBed) then ("-target_bed " +  '"' + targetTargetBed + '"') else ""} \
      ~{if defined(targetTargetExons) then ("-target_exons " +  '"' + targetTargetExons + '"') else ""} \
      ~{if defined(blacklistBlacklist) then ("-blacklist " +  '"' + blacklistBlacklist + '"') else ""} \
      ~{if defined(tsgTsgBed) then ("-tsg_bed " +  '"' + tsgTsgBed + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{true="-skip_plots" false="" skipSkipPlots} \
      ~{if defined(buildBuild) then ("-build " +  '"' + buildBuild + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}