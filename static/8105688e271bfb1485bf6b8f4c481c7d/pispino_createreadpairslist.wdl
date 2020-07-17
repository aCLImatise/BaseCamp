version 1.0

task PispinoCreatereadpairslist {
  input {
    String? directory_raw_sequences
    File? name_output_list
    String? label_add_c_end
    String? label_add_c_front
    String? label_re_index_c
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
      ~{if defined(directory_raw_sequences) then ("-i " +  '"' + directory_raw_sequences + '"') else ""} \
      ~{if defined(name_output_list) then ("-o " +  '"' + name_output_list + '"') else ""} \
      ~{if defined(label_add_c_end) then ("--label-add-c-end " +  '"' + label_add_c_end + '"') else ""} \
      ~{if defined(label_add_c_front) then ("--label-add-c-front " +  '"' + label_add_c_front + '"') else ""} \
      ~{if defined(label_re_index_c) then ("--label-reindex-c " +  '"' + label_re_index_c + '"') else ""} \
      ~{true="-f" false="" ignore_name_clash}
  >>>
  parameter_meta {
    directory_raw_sequences: "[REQUIRED] Directory with your raw sequences in gzipped FASTQ"
    name_output_list: "Name of output list file."
    label_add_c_end: "Add a label to the END of each sample ids in the output file. N.B. \"_\" is not allowed"
    label_add_c_front: "Add a label to the FRONT of each sample ids in the output file. N.B. \"_\" is not allowed"
    label_re_index_c: "Rename samples with the given label. It will automatically add 001, 002 etc. at the end of each name. N.B. \"_\" is not allowed"
    ignore_name_clash: "Ignore name clash and create a mapping file anyway."
    makes: ""
    a: ""
    read_pairs_list_dot: ""
  }
}