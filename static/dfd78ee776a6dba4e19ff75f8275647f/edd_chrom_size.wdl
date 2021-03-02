version 1.0

task EddChromSize {
  input {
    String? fdr
    String? p
    Int? n
    Int? bin_size
    String edd
  }
  command <<<
    edd chrom_size \
      ~{edd} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fdr: ""
    p: ""
    n: ""
    bin_size: ""
    edd: ""
  }
  output {
    File out_stdout = stdout()
  }
}