version 1.0

task Gfold {
  input {
    String g_fold
    String author
    String date
  }
  command <<<
    gfold \
      ~{g_fold} \
      ~{author} \
      ~{date}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_fold: ":   Generalized fold change for ranking differentially expressed   \\ngenes from RNA-seq data."
    author: ":   Jianxing Feng (jianxing.tongji@gmail.com)"
    date: ":   Sun May 24 07:42:36 CST 2015"
  }
  output {
    File out_stdout = stdout()
  }
}