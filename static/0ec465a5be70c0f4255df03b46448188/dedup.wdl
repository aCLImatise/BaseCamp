version 1.0

task Dedup {
  input {
    File? input_file_option
    Boolean? merged
    Directory? output_folder_has
    String ded_up
    String set_dot
  }
  command <<<
    dedup \
      ~{ded_up} \
      ~{set_dot} \
      ~{if defined(input_file_option) then ("--input " +  '"' + input_file_option + '"') else ""} \
      ~{if (merged) then "--merged" else ""} \
      ~{if defined(output_folder_has) then ("--output " +  '"' + output_folder_has + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dedup:0.12.8--0"
  }
  parameter_meta {
    input_file_option: "the input file if this option is not specified,\\nthe input is expected to be piped in"
    merged: "the input only contains merged reads.\\nIf this option is specified read names are not\\nexamined for prefixes.\\nBoth the start and end of the aligment are considered\\nfor all reads."
    output_folder_has: "the output folder. Has to be specified if input is"
    ded_up: "-h,--help           show this help page"
    set_dot: "-u,--unsorted       Do not automatically sort the output"
  }
  output {
    File out_stdout = stdout()
  }
}