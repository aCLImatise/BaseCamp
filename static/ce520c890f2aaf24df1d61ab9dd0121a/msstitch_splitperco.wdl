version 1.0

task MsstitchSplitperco {
  input {
    File? input_file_format
    Directory? directory_to_output
    Array[String] prot_headers
  }
  command <<<
    msstitch splitperco \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(prot_headers) then ("--protheaders " +  '"' + prot_headers + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.6--py_0"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    prot_headers: "Specify protein FASTA headers to split on. Multiple\\nheaders of the same split-type can be grouped with\\nsemicolons. E.g. --protheaders 'ENSP;sp\\nPSEUDOGEN;ncRNA' would split into ENSP/swissprot\\npeptides and pseudogenes/non-coding RNA peptides.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
  }
}