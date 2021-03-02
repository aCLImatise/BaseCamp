version 1.0

task Seqseqpangenomedescription {
  input {
    File? file_list_pathstofilesfasta
    File? name_output_file
    File? add
    String genome_description_do_tpy
  }
  command <<<
    seq_seq_pan_genomedescription \
      ~{genome_description_do_tpy} \
      ~{if defined(file_list_pathstofilesfasta) then ("--input " +  '"' + file_list_pathstofilesfasta + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(add) then ("--add " +  '"' + add + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_list_pathstofilesfasta: "File with list of /paths/to/files.fasta"
    name_output_file: "name of output file"
    add: "Add new genome description to this file.\\n"
    genome_description_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}