version 1.0

task MafMaskCpgpy {
  input {
    String? mask
    Boolean? restricted
    String var_input
    String var_output
  }
  command <<<
    maf_mask_cpg_py \
      ~{var_input} \
      ~{var_output} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if (restricted) then "--restricted" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mask: "Character to use as mask ('?' is default)"
    restricted: "Use restricted definition of CpGs"
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}