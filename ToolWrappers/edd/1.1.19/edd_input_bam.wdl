version 1.0

task EddInputBam {
  input {
    String? fdr
    String? p
    Int? n
    Int? bin_size
    String edd
  }
  command <<<
    edd input_bam \
      ~{edd} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""}
  >>>
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