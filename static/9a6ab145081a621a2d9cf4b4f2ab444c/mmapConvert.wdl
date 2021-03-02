version 1.0

task MmapConvert {
  input {
    File? output_file
    File file_do_tm_hap
  }
  command <<<
    mmapConvert \
      ~{file_do_tm_hap} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "output file"
    file_do_tm_hap: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}