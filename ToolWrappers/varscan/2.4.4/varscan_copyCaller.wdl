version 1.0

task VarscanCopyCaller {
  input {
    File? output_file
    File? output_hom_del_file
    Boolean? min_coverage
    Boolean? min_tumor_coverage
    Boolean? max_hom_del_coverage
    Float? amp_threshold
    Int? del_threshold
    Boolean? min_region_size
    Boolean? recenter_up
    Int? recenter_down
    String? jar
    String java
    String copy_caller
    String? vars_can_dot_copy_number
  }
  command <<<
    varscan copyCaller \
      ~{java} \
      ~{copy_caller} \
      ~{vars_can_dot_copy_number} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (output_hom_del_file) then "--output-homdel-file" else ""} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if (min_tumor_coverage) then "--min-tumor-coverage" else ""} \
      ~{if (max_hom_del_coverage) then "--max-homdel-coverage" else ""} \
      ~{if defined(amp_threshold) then ("--amp-threshold " +  '"' + amp_threshold + '"') else ""} \
      ~{if defined(del_threshold) then ("--del-threshold " +  '"' + del_threshold + '"') else ""} \
      ~{if (min_region_size) then "--min-region-size" else ""} \
      ~{if (recenter_up) then "--recenter-up" else ""} \
      ~{if defined(recenter_down) then ("--recenter-down " +  '"' + recenter_down + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    output_file: "Output file to contain the calls"
    output_hom_del_file: "Optional output file for candidate homozygous deletions"
    min_coverage: "Minimum normal read depth at a position to make a call [20]"
    min_tumor_coverage: "Minimum tumor read depth at a position to make a non-homdel call [10]"
    max_hom_del_coverage: "Maximum depth in tumor for candidate homozygous deletions [5]"
    amp_threshold: "bound for log ratio to call amplification [0.25]"
    del_threshold: "bound for log ratio to call deletion (provide as positive number) [0.25]"
    min_region_size: "Minimum size (in bases) for a region to be counted [10]"
    recenter_up: "Recenter data around an adjusted baseline > 0 [0]"
    recenter_down: "data around an adjusted baseline < 0 [0]"
    jar: ""
    java: ""
    copy_caller: ""
    vars_can_dot_copy_number: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_output_hom_del_file = "${in_output_hom_del_file}"
  }
}