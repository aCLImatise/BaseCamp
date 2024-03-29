version 1.0

task MafconvertHtml {
  input {
    String maf_convert
    String axt
    String blast
    String blast_tab
    String chain
    String gff
    String psl
    String sam
    String tab
    String maf_file
  }
  command <<<
    maf_convert html \
      ~{maf_convert} \
      ~{axt} \
      ~{blast} \
      ~{blast_tab} \
      ~{chain} \
      ~{gff} \
      ~{psl} \
      ~{sam} \
      ~{tab} \
      ~{maf_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1186--h8b12597_0"
  }
  parameter_meta {
    maf_convert: ""
    axt: ""
    blast: ""
    blast_tab: ""
    chain: ""
    gff: ""
    psl: ""
    sam: ""
    tab: ""
    maf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}