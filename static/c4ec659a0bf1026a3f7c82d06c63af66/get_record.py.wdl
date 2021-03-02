version 1.0

task GetRecordpy {
  input {
    File? input_record_file
    File? input_file_id
    File? output_subrecord_file
    File? type_record_file
    String? g
    Int? table_record_column
    Int? table_record_retain
    String? table_record_seperation
    Boolean? remove_duplicates_get
  }
  command <<<
    get_record_py \
      ~{if defined(input_record_file) then ("-i " +  '"' + input_record_file + '"') else ""} \
      ~{if defined(input_file_id) then ("-a " +  '"' + input_file_id + '"') else ""} \
      ~{if defined(output_subrecord_file) then ("-o " +  '"' + output_subrecord_file + '"') else ""} \
      ~{if defined(type_record_file) then ("-t " +  '"' + type_record_file + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(table_record_column) then ("-k " +  '"' + table_record_column + '"') else ""} \
      ~{if defined(table_record_retain) then ("-f " +  '"' + table_record_retain + '"') else ""} \
      ~{if defined(table_record_seperation) then ("-s " +  '"' + table_record_seperation + '"') else ""} \
      ~{if (remove_duplicates_get) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tesorter:1.3.0--py_0"
  }
  parameter_meta {
    input_record_file: "input a RECORD FILE"
    input_file_id: "input a LIST FILE, one RECORD ID per line"
    output_subrecord_file: "output to SUBRECORD FILE"
    type_record_file: "TYPE    RECORD FILE TYPE [table|fasta|fastq|hmm][default: table]"
    g: "[get|remove] RECORD [default: get]"
    table_record_column: "if a table RECORD, the column NUM of RECORD ID[default: 1]"
    table_record_retain: "if a table RECORD, retain the row NUM as header [default: 1]"
    table_record_seperation: "if a table RECORD, seperation [default: \\\"\\t\\\"]"
    remove_duplicates_get: "remove duplicates when get table records"
  }
  output {
    File out_stdout = stdout()
    File out_output_subrecord_file = "${in_output_subrecord_file}"
  }
}