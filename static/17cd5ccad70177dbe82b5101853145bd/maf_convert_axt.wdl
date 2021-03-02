version 1.0

task MafconvertAxt {
  input {
    String maf_convert
    String maf_file
    String blast
    String blast_tab
    String chain
    String gff
    String html
    String psl
    String sam
    String tab
  }
  command <<<
    maf_convert axt \
      ~{maf_convert} \
      ~{maf_file} \
      ~{blast} \
      ~{blast_tab} \
      ~{chain} \
      ~{gff} \
      ~{html} \
      ~{psl} \
      ~{sam} \
      ~{tab}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1186--h8b12597_0"
  }
  parameter_meta {
    maf_convert: ""
    maf_file: ""
    blast: ""
    blast_tab: ""
    chain: ""
    gff: ""
    html: ""
    psl: ""
    sam: ""
    tab: ""
  }
  output {
    File out_stdout = stdout()
  }
}