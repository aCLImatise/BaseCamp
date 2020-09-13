version 1.0

task MetaSNVPostpy {
  input {
    Float? coverage_breadth_minimal
    Float? coverage_depth_minimal
    Int? minimum_number_samples
    Float? filtering_step_ii_minimum
    Float? filtering_step_ii_required
    Boolean? div
  }
  command <<<
    metaSNV_post_py \
      ~{if defined(coverage_breadth_minimal) then ("-b " +  '"' + coverage_breadth_minimal + '"') else ""} \
      ~{if defined(coverage_depth_minimal) then ("-d " +  '"' + coverage_depth_minimal + '"') else ""} \
      ~{if defined(minimum_number_samples) then ("-m " +  '"' + minimum_number_samples + '"') else ""} \
      ~{if defined(filtering_step_ii_minimum) then ("-c " +  '"' + filtering_step_ii_minimum + '"') else ""} \
      ~{if defined(filtering_step_ii_required) then ("-p " +  '"' + filtering_step_ii_required + '"') else ""} \
      ~{if (div) then "-div" else ""}
  >>>
  parameter_meta {
    coverage_breadth_minimal: "Coverage breadth: minimal horizontal genome coverage percentage\\nper sample per species (default: 40.0)"
    coverage_depth_minimal: "Coverage depth: minimal average vertical genome coverage per\\nsample per species (default: 5.0)"
    minimum_number_samples: "Minimum number of samples per species (default: 2)"
    filtering_step_ii_minimum: "FILTERING STEP II: minimum coverage per position per sample per\\nspecies (default: 5.0)"
    filtering_step_ii_required: "FILTERING STEP II: required proportion of informative samples\\n(coverage non-zero) per position (default: 0.5)"
    div: "Compute diversity measures (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}