version 1.0

task Mergeassembly {
  input {
    Boolean? subject_contig_name
    File? output_file_prefix
    Boolean? query_contig_name
    Boolean? minidentiy
    Boolean? stringent_rankrank_stringent
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
      ~{if (minidentiy) then "-i" else ""} \
      ~{if (stringent_rankrank_stringent) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    subject_contig_name: "Subject Contig name"
    output_file_prefix: "Output file prefix"
    query_contig_name: "Query Contig name"
    minidentiy: "minIdentiy"
    stringent_rankrank_stringent: "stringent rank[0]\\nrank: 0 highest stringent; 1 low stringent\\n"
    option_one: ""
    value_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}