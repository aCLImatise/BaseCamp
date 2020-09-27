version 1.0

task Orderchr {
  input {
    String? karyotype
    File? links
  }
  command <<<
    orderchr \
      ~{if defined(karyotype) then ("-karyotype " +  '"' + karyotype + '"') else ""} \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""}
  >>>
  parameter_meta {
    karyotype: "{ -shuffle_file chrs_to_shuffle.txt | -shuffle LIST | -shuffle_rx REGEX_LIST }\\n{-static LIST} {-static_rx REGEX_LIST}\\n{-init_order LIST} {-init_order_rx REGEX_LIST}\\n"
    links: ""
  }
  output {
    File out_stdout = stdout()
  }
}