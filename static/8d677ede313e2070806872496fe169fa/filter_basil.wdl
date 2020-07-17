version 1.0

task FilterBasil.py {
  input {
    String? input_file_name
    String? output_file_name
    Int? min_oea_each_side
    Int? min_oea_one_side
    Int? min_oea_sum
    Int? min_clipping_each_side
    Int? min_clipping_sum
    Int? min_g_score
  }
  command <<<
    filter_basil.py \
      ~{if defined(input_file_name) then ("-i " +  '"' + input_file_name + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(min_oea_each_side) then ("--min-oea-each-side " +  '"' + min_oea_each_side + '"') else ""} \
      ~{if defined(min_oea_one_side) then ("--min-oea-one-side " +  '"' + min_oea_one_side + '"') else ""} \
      ~{if defined(min_oea_sum) then ("--min-oea-sum " +  '"' + min_oea_sum + '"') else ""} \
      ~{if defined(min_clipping_each_side) then ("--min-clipping-each-side " +  '"' + min_clipping_each_side + '"') else ""} \
      ~{if defined(min_clipping_sum) then ("--min-clipping-sum " +  '"' + min_clipping_sum + '"') else ""} \
      ~{if defined(min_g_score) then ("--min-gscore " +  '"' + min_g_score + '"') else ""}
  >>>
  parameter_meta {
    input_file_name: "Input file name."
    output_file_name: "Output file name."
    min_oea_each_side: "Minimal OEA coverage on each side."
    min_oea_one_side: "Minimal OEA coverage on one side."
    min_oea_sum: "Minimal total OEA coverage."
    min_clipping_each_side: "Minimal OEA coverage on each side."
    min_clipping_sum: "Minimal total OEA coverage."
    min_g_score: "Smallest geometric mean score"
  }
}