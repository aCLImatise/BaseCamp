version 1.0

task CleanBed.py {
  input {
    String? input_sorted_file
    String? output_sorted_file
  }
  command <<<
    clean_bed.py \
      ~{if defined(input_sorted_file) then ("--input " +  '"' + input_sorted_file + '"') else ""} \
      ~{if defined(output_sorted_file) then ("--output " +  '"' + output_sorted_file + '"') else ""}
  >>>
  parameter_meta {
    input_sorted_file: "The input (sorted) BED file."
    output_sorted_file: "The output (sorted) BED file."
  }
}