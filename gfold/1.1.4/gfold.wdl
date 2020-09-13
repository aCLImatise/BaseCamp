version 1.0

task Gfold {
  input {
    String g_fold
    String author
    String date
    String version
  }
  command <<<
    gfold \
      ~{g_fold} \
      ~{author} \
      ~{date} \
      ~{version}
  >>>
  parameter_meta {
    g_fold: ":   Generalized fold change for ranking differentially expressed   \\ngenes from RNA-seq data."
    author: ":   Jianxing Feng (jianxing.tongji@gmail.com)"
    date: ":   Sun May 24 07:42:36 CST 2015"
    version: ":   V1.1.4"
  }
  output {
    File out_stdout = stdout()
  }
}