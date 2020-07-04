version 1.0

task KneaddataReadCountTable {
  input {
    String? input_folder_kneaddata
    String? output_file_write
  }
  command <<<
    kneaddata_read_count_table \
      ~{if defined(input_folder_kneaddata) then ("--input " +  '"' + input_folder_kneaddata + '"') else ""} \
      ~{if defined(output_file_write) then ("--output " +  '"' + output_file_write + '"') else ""}
  >>>
  parameter_meta {
    input_folder_kneaddata: "the input folder with kneaddata log files"
    output_file_write: "the output file to write"
  }
}