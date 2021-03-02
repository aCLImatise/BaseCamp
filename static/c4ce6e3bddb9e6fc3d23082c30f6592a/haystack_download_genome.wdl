version 1.0

task HaystackDownloadGenome {
  input {
    String name
  }
  command <<<
    haystack_download_genome \
      ~{name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "genome name. Example: haystack_download_genome hg19."
  }
  output {
    File out_stdout = stdout()
  }
}