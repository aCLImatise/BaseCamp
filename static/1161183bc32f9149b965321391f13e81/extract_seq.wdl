version 1.0

task ExtractSeq {
  input {
    File? name_output_file
    String? sequence_name_extract
    Boolean? do_remove_gaps
    String msa_file
  }
  command <<<
    extract_seq \
      ~{msa_file} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(sequence_name_extract) then ("-s " +  '"' + sequence_name_extract + '"') else ""} \
      ~{if (do_remove_gaps) then "-g" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0"
  }
  parameter_meta {
    name_output_file: "Name of output file to write sequence to"
    sequence_name_extract: "Sequence name to extract"
    do_remove_gaps: "Do not remove gaps"
    msa_file: "file containing MSA"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}