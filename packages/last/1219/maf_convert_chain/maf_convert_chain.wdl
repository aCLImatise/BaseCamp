version 1.0

task MafconvertChain {
  input {
    String maf_convert
    String axt
    String blast
    String blast_tab
    String gff
    String html
    String psl
    String sam
    String tab
    String maf_file
  }
  command <<<
    maf_convert chain \
      ~{maf_convert} \
      ~{axt} \
      ~{blast} \
      ~{blast_tab} \
      ~{gff} \
      ~{html} \
      ~{psl} \
      ~{sam} \
      ~{tab} \
      ~{maf_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1219--h2e03b76_0"
  }
  parameter_meta {
    maf_convert: ""
    axt: ""
    blast: ""
    blast_tab: ""
    gff: ""
    html: ""
    psl: ""
    sam: ""
    tab: ""
    maf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}