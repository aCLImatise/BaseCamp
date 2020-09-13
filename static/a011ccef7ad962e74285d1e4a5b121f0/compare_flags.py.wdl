version 1.0

task CompareFlagspy {
  input {
    File? input_dataset_wide
    File? output_file_cross
    Int? flag_one
    Int? flag_two
  }
  command <<<
    compare_flags_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(output_file_cross) then ("--output " +  '"' + output_file_cross + '"') else ""} \
      ~{if defined(flag_one) then ("--flag1 " +  '"' + flag_one + '"') else ""} \
      ~{if defined(flag_two) then ("--flag2 " +  '"' + flag_two + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    output_file_cross: "Output file (Cross tab format)."
    flag_one: "Flag 1 to create cross tab"
    flag_two: "Flag 2 to create cross tab\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_cross = "${in_output_file_cross}"
  }
}