version 1.0

task MemechipHtmlToTsv {
  input {
    File meme_chip_html_file
  }
  command <<<
    meme_chip_html_to_tsv \
      ~{meme_chip_html_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    meme_chip_html_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}