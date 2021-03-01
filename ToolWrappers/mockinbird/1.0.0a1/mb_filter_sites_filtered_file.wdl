version 1.0

task MbfiltersitesFilteredFile {
  input {
    String? padding_bp
    String mb_filter_sites
  }
  command <<<
    mb_filter_sites filtered_file \
      ~{mb_filter_sites} \
      ~{if defined(padding_bp) then ("--padding_bp " +  '"' + padding_bp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    padding_bp: ""
    mb_filter_sites: ""
  }
  output {
    File out_stdout = stdout()
  }
}