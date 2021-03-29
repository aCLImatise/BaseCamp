version 1.0

task MafconvertTab {
  input {
    String maf_convert
    String axt
    String blast
    String blast_tab
    String chain
    String gff
    String html
    String psl
    String sam
    String maf_file
  }
  command <<<
    maf_convert tab \
      ~{maf_convert} \
      ~{axt} \
      ~{blast} \
      ~{blast_tab} \
      ~{chain} \
      ~{gff} \
      ~{html} \
      ~{psl} \
      ~{sam} \
      ~{maf_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1205--h8b12597_0"
  }
  parameter_meta {
    maf_convert: ""
    axt: ""
    blast: ""
    blast_tab: ""
    chain: ""
    gff: ""
    html: ""
    psl: ""
    sam: ""
    maf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}