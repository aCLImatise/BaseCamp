version 1.0

task SeqToFirstIso {
  input {
    String? name_output_file
    String? unlabelled_aa
    Boolean? v
    String input_file_name
    String sequence_col_name
    String charge_col_name
  }
  command <<<
    seq-to-first-iso \
      ~{input_file_name} \
      ~{sequence_col_name} \
      ~{charge_col_name} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(unlabelled_aa) then ("--unlabelled-aa " +  '"' + unlabelled_aa + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    name_output_file: "name of output file"
    unlabelled_aa: "amino acids with default abundance"
    v: ""
    input_file_name: "file to parse in .tsv format"
    sequence_col_name: "column name with sequences"
    charge_col_name: "column name with charges"
  }
}