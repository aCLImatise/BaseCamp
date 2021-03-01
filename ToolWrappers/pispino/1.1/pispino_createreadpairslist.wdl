version 1.0

task PispinoCreatereadpairslist {
  input {
    Directory? directory_your_raw
    File? name_output_list
    File? label_add_c_end
    File? label_add_c_front
    Int? label_re_index_c
    Boolean? ignore_name_clash
    String makes
    String a
    String read_pairs_list_dot
  }
  command <<<
    pispino_createreadpairslist \
      ~{makes} \
      ~{a} \
      ~{read_pairs_list_dot} \
      ~{if defined(directory_your_raw) then ("-i " +  '"' + directory_your_raw + '"') else ""} \
      ~{if defined(name_output_list) then ("-o " +  '"' + name_output_list + '"') else ""} \
      ~{if defined(label_add_c_end) then ("--label-add-c-end " +  '"' + label_add_c_end + '"') else ""} \
      ~{if defined(label_add_c_front) then ("--label-add-c-front " +  '"' + label_add_c_front + '"') else ""} \
      ~{if defined(label_re_index_c) then ("--label-reindex-c " +  '"' + label_re_index_c + '"') else ""} \
      ~{if (ignore_name_clash) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_your_raw: "[REQUIRED] Directory with your raw sequences in\\ngzipped FASTQ"
    name_output_list: "Name of output list file."
    label_add_c_end: "Add a label to the END of each sample ids in the\\noutput file. N.B. \\\"_\\\" is not allowed"
    label_add_c_front: "Add a label to the FRONT of each sample ids in the\\noutput file. N.B. \\\"_\\\" is not allowed"
    label_re_index_c: "Rename samples with the given label. It will\\nautomatically add 001, 002 etc. at the end of each\\nname. N.B. \\\"_\\\" is not allowed"
    ignore_name_clash: "Ignore name clash and create a mapping file anyway."
    makes: ""
    a: ""
    read_pairs_list_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_list = "${in_name_output_list}"
    File out_label_add_c_end = "${in_label_add_c_end}"
    File out_label_add_c_front = "${in_label_add_c_front}"
  }
}