version 1.0

task SplitBedIntoEqualRegions.py {
  input {
    String? input_file
    String? num_of_files
    String? output_files
  }
  command <<<
    split_Bed_into_equal_regions.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(num_of_files) then ("--num-of-files " +  '"' + num_of_files + '"') else ""} \
      ~{if defined(output_files) then ("--output-files " +  '"' + output_files + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input merged BED file (default: None)"
    num_of_files: "1 (default: 1)"
    output_files: "Output BED file (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
  }
}