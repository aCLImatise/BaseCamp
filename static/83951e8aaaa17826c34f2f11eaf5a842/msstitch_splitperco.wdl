version 1.0

task MsstitchSplitperco {
  input {
    String? input_file_format
    String? directory_to_output
    Array[String] prot_headers
  }
  command <<<
    msstitch splitperco \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(prot_headers) then ("--protheaders " +  '"' + prot_headers + '"') else ""}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    prot_headers: "Specify protein FASTA headers to split on. Multiple headers of the same split-type can be grouped with semicolons. E.g. --protheaders 'ENSP;sp PSEUDOGEN;ncRNA' would split into ENSP/swissprot peptides and pseudogenes/non-coding RNA peptides."
  }
}