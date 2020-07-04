version 1.0

task Glistmaker {
  input {
    String? word_length
    String? cut_off
    String? output_name
    Boolean? num_threads
    Boolean? max_tables
    Boolean? table_size
    Boolean? increase_debug_level
    String input_files
  }
  command <<<
    glistmaker \
      ~{input_files} \
      ~{if defined(word_length) then ("--wordlength " +  '"' + word_length + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(output_name) then ("--outputname " +  '"' + output_name + '"') else ""} \
      ~{true="--num_threads" false="" num_threads} \
      ~{true="--max_tables" false="" max_tables} \
      ~{true="--table_size" false="" table_size} \
      ~{true="-D" false="" increase_debug_level}
  >>>
  parameter_meta {
    word_length: "- specify index wordsize (1-32) (default 16)"
    cut_off: "- specify frequency cut-off (default 1)"
    output_name: "- specify output name (default \"out\")"
    num_threads: "- number of threads the program is run on (default MIN(8, num_input_files))"
    max_tables: "- maximum number of temporary tables (default MAX(num_threads, 2))"
    table_size: "- maximum size of the temporary table (default 500000000)"
    increase_debug_level: "- increase debug level"
    input_files: ""
  }
}