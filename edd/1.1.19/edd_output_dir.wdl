version 1.0

task EddOutputDir {
  input {
    String? bin_size
    String? n
    String? p
    String? fdr
    String edd
  }
  command <<<
    edd output_dir \
      ~{edd} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""}
  >>>
  parameter_meta {
    bin_size: ""
    n: ""
    p: ""
    fdr: ""
    edd: ""
  }
}