version 1.0

task Humann2SplitStratifiedTable {
  input {
    Int? stratified_input_table
    Directory? the_output_folder
  }
  command <<<
    humann2_split_stratified_table \
      ~{if defined(stratified_input_table) then ("--input " +  '"' + stratified_input_table + '"') else ""} \
      ~{if defined(the_output_folder) then ("--output " +  '"' + the_output_folder + '"') else ""}
  >>>
  parameter_meta {
    stratified_input_table: "the stratified input table (tsv, tsv.gzip, tsv.bzip2, or biom format)"
    the_output_folder: "the output folder\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_the_output_folder = "${in_the_output_folder}"
  }
}