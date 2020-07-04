version 1.0

task MmapConvert {
  input {
    String? output_file
    File file_do_tm_hap
  }
  command <<<
    mmapConvert \
      ~{file_do_tm_hap} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    output_file: "output file"
    file_do_tm_hap: ""
  }
}