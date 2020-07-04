version 1.0

task MetaSNVPost.py {
  input {
    Float? coverage_breadth_minimal
    Float? coverage_depth_default
    Int? minimum_number_samples
    Float? filtering_step_ii_minimum
    Float? filtering_step_ii_required
    Boolean? div
    String proj
  }
  command <<<
    metaSNV_post.py \
      ~{proj} \
      ~{if defined(coverage_breadth_minimal) then ("-b " +  '"' + coverage_breadth_minimal + '"') else ""} \
      ~{if defined(coverage_depth_default) then ("-d " +  '"' + coverage_depth_default + '"') else ""} \
      ~{if defined(minimum_number_samples) then ("-m " +  '"' + minimum_number_samples + '"') else ""} \
      ~{if defined(filtering_step_ii_minimum) then ("-c " +  '"' + filtering_step_ii_minimum + '"') else ""} \
      ~{if defined(filtering_step_ii_required) then ("-p " +  '"' + filtering_step_ii_required + '"') else ""} \
      ~{true="-div" false="" div}
  >>>
  parameter_meta {
    coverage_breadth_minimal: "Coverage breadth: minimal horizontal genome coverage percentage per sample per species (default: 40.0)"
    coverage_depth_default: "Coverage depth: minimal average vertical genome coverage per sample per species (default: 5.0)"
    minimum_number_samples: "Minimum number of samples per species (default: 2)"
    filtering_step_ii_minimum: "FILTERING STEP II: minimum coverage per position per sample per species (default: 5.0)"
    filtering_step_ii_required: "FILTERING STEP II: required proportion of informative samples (coverage non-zero) per position (default: 0.5)"
    div: "Compute diversity measures (default: False)"
    proj: "project name"
  }
}