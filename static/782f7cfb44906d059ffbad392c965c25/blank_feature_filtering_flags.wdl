version 1.0

task BlankFeatureFilteringFlags.py {
  input {
    String inputInput
    String designDesign
    String uniqidUniqid
    String groupGroup
    String bffBff
    String blankBlank
    String criteriaCriteria
    String outOutFlags
    String outOutBff
  }
  command <<<
    blank_feature_filtering_flags.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(uniqidUniqid) then ("--uniqID " +  '"' + uniqidUniqid + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(bffBff) then ("--bff " +  '"' + bffBff + '"') else ""} \
      ~{if defined(blankBlank) then ("--blank " +  '"' + blankBlank + '"') else ""} \
      ~{if defined(criteriaCriteria) then ("--criteria " +  '"' + criteriaCriteria + '"') else ""} \
      ~{if defined(outOutFlags) then ("--outflags " +  '"' + outOutFlags + '"') else ""} \
      ~{if defined(outOutBff) then ("--outbff " +  '"' + outOutBff + '"') else ""}
  >>>
}