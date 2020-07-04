version 1.0

task Prep1by1.py {
  input {
    String? fusions
    String? reads
    String? output_list_files_one
    String? output_list_files_two
  }
  command <<<
    prep-1by1.py \
      ~{if defined(fusions) then ("--fusions " +  '"' + fusions + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(output_list_files_one) then ("--output-list-files-1 " +  '"' + output_list_files_one + '"') else ""} \
      ~{if defined(output_list_files_two) then ("--output-list-files-2 " +  '"' + output_list_files_two + '"') else ""}
  >>>
  parameter_meta {
    fusions: "The input list of fusions for which the supporting reads should be extracted."
    reads: "The file containing the supporting paired-reads."
    output_list_files_one: "It is a list of files containing the extracted information, regarding preliminary candidate fusion genes."
    output_list_files_two: "It is a list of files containing the extracted information, regarding reads ids which support the preliminary candidate fusion genes."
  }
}