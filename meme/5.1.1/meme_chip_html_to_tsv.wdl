version 1.0

task MemeChipHtmlToTsv {
  input {
    String meme_chip_html_file
    String summary_tsv_file
  }
  command <<<
    meme-chip_html_to_tsv \
      ~{meme_chip_html_file} \
      ~{summary_tsv_file}
  >>>
  parameter_meta {
    meme_chip_html_file: ""
    summary_tsv_file: ""
  }
}