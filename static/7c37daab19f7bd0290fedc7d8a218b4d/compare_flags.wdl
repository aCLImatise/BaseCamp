version 1.0

task CompareFlags.py {
  input {
    String? input_dataset_wide
    String? output_file_cross
    String? flag_one
    String? flag_two
  }
  command <<<
    compare_flags.py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(output_file_cross) then ("--output " +  '"' + output_file_cross + '"') else ""} \
      ~{if defined(flag_one) then ("--flag1 " +  '"' + flag_one + '"') else ""} \
      ~{if defined(flag_two) then ("--flag2 " +  '"' + flag_two + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    output_file_cross: "Output file (Cross tab format)."
    flag_one: "Flag 1 to create cross tab"
    flag_two: "Flag 2 to create cross tab"
  }
}