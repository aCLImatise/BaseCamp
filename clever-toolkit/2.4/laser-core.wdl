version 1.0

task LaserCore {
  input {
    Boolean vV
    Boolean singleSingleEnd
    Boolean xX
    String maxMaxInputAln
    Boolean iI
    Boolean pP
    Boolean mM
    Boolean cC
    Boolean iI
    Boolean affineAffineGapCosts
    String gapGapExtendCost
    Boolean sS
    Boolean interInterChromosomal
    String interInterChromSplitCost
    Boolean inversionsInversions
    String inversionInversionSplitCost
    Boolean dD
    Boolean aA
    Boolean nN
    String maxMaxAnchors
    String maxMaxAnchorPairs
    String anchorAnchorLengthIncrement
    String maxMaxAnchorLength
    Boolean nN
    Boolean sS
    Boolean aA
    Boolean eE
    Boolean oO
    Boolean tT
    Boolean pP
    Boolean lL
    Boolean lL
    Boolean rR
    Boolean dD
    Boolean tT
    Boolean mM
    String snpSnp
    Boolean wW
    String inInDelWeightCutOff
    Boolean rightmostRightmost
    Boolean softSoftClip
    String softSoftClipOpenCost
    String softSoftClipExtendCost
    String readReadGroup
    String readReadGroupLibrary
    String readReadGroupSample
  }
  command <<<
    laser-core \
      ~{true="-v" false="" vV} \
      ~{true="--single-end" false="" singleSingleEnd} \
      ~{true="-X" false="" xX} \
      ~{if defined(maxMaxInputAln) then ("--max_input_aln " +  '"' + maxMaxInputAln + '"') else ""} \
      ~{true="-I" false="" iI} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-c" false="" cC} \
      ~{true="-i" false="" iI} \
      ~{true="--affine_gapcosts" false="" affineAffineGapCosts} \
      ~{if defined(gapGapExtendCost) then ("--gap_extend_cost " +  '"' + gapGapExtendCost + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="--interchromosomal" false="" interInterChromosomal} \
      ~{if defined(interInterChromSplitCost) then ("--interchrom_split_cost " +  '"' + interInterChromSplitCost + '"') else ""} \
      ~{true="--inversions" false="" inversionsInversions} \
      ~{if defined(inversionInversionSplitCost) then ("--inversion_split_cost " +  '"' + inversionInversionSplitCost + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{if defined(maxMaxAnchors) then ("--max_anchors " +  '"' + maxMaxAnchors + '"') else ""} \
      ~{if defined(maxMaxAnchorPairs) then ("--max_anchor_pairs " +  '"' + maxMaxAnchorPairs + '"') else ""} \
      ~{if defined(anchorAnchorLengthIncrement) then ("--anchor_length_increment " +  '"' + anchorAnchorLengthIncrement + '"') else ""} \
      ~{if defined(maxMaxAnchorLength) then ("--max_anchor_length " +  '"' + maxMaxAnchorLength + '"') else ""} \
      ~{true="-N" false="" nN} \
      ~{true="-S" false="" sS} \
      ~{true="-A" false="" aA} \
      ~{true="-e" false="" eE} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-P" false="" pP} \
      ~{true="-l" false="" lL} \
      ~{true="-L" false="" lL} \
      ~{true="-R" false="" rR} \
      ~{true="-D" false="" dD} \
      ~{true="-T" false="" tT} \
      ~{true="-M" false="" mM} \
      ~{if defined(snpSnp) then ("--snp " +  '"' + snpSnp + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{if defined(inInDelWeightCutOff) then ("--indel_weight_cutoff " +  '"' + inInDelWeightCutOff + '"') else ""} \
      ~{true="--rightmost" false="" rightmostRightmost} \
      ~{true="--soft_clip" false="" softSoftClip} \
      ~{if defined(softSoftClipOpenCost) then ("--soft_clip_open_cost " +  '"' + softSoftClipOpenCost + '"') else ""} \
      ~{if defined(softSoftClipExtendCost) then ("--soft_clip_extend_cost " +  '"' + softSoftClipExtendCost + '"') else ""} \
      ~{if defined(readReadGroup) then ("--read_group " +  '"' + readReadGroup + '"') else ""} \
      ~{if defined(readReadGroupLibrary) then ("--read_group_library " +  '"' + readReadGroupLibrary + '"') else ""} \
      ~{if defined(readReadGroupSample) then ("--read_group_sample " +  '"' + readReadGroupSample + '"') else ""}
  >>>
}