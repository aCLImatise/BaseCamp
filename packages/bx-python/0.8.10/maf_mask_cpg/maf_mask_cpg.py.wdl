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
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
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