version 1.0

task KneaddataReadCountTable {
  input {
    Directory? input_folder_kneaddata
    File? output_file_write
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
  output {
    File out_stdout = stdout()
    File out_output_file_write = "${in_output_file_write}"
  }
}