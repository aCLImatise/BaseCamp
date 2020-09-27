version 1.0

task Mergeassembly {
  input {
    Boolean? subject_contig_name
    File? output_file_prefix
    Boolean? query_contig_name
    Boolean? stringent_rankrank_highest
    Int? option_one
    Int? value_one
  }
  command <<<
    mergeassembly \
      ~{option_one} \
      ~{value_one} \
      ~{if (subject_contig_name) then "-s" else ""} \
      ~{if (output_file_prefix) then "-o" else ""} \
      ~{if (query_contig_name) then "-q" else ""} \
      ~{if (stringent_rankrank_highest) then "-r" else ""}
  >>>
  parameter_meta {
    subject_contig_name: "Subject Contig name"
    output_file_prefix: "Output file prefix"
    query_contig_name: "Query Contig name"
    stringent_rankrank_highest: "stringent rank[0]\\nrank: 0 highest stringent; 1 low stringent\\n"
    option_one: ""
    value_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}