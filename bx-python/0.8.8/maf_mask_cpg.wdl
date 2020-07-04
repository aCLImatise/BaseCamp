version 1.0

task MafMaskCpg.py {
  input {
    String? mask
    Boolean? restricted
    String var_input
    String var_output
  }
  command <<<
    maf_mask_cpg.py \
      ~{var_input} \
      ~{var_output} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{true="--restricted" false="" restricted}
  >>>
  parameter_meta {
    mask: "Character to use as mask ('?' is default)"
    restricted: "Use restricted definition of CpGs"
    var_input: ""
    var_output: ""
  }
}