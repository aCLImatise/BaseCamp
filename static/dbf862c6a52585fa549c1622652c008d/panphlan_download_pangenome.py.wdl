version 1.0

task PanphlanDownloadPangenomepy {
  input {
    String? input_name
  }
  command <<<
    panphlan_download_pangenome_py \
      ~{if defined(input_name) then ("--input_name " +  '"' + input_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_name: "Show progress information"
  }
  output {
    File out_stdout = stdout()
  }
}