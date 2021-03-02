version 1.0

task SeqseqpanMaf {
  input {
    Boolean? g
    String? x
    String? n
    String? p
    Boolean? quiet
    String seq_seq_pando_tpy
    String maf
  }
  command <<<
    seq_seq_pan maf \
      ~{seq_seq_pando_tpy} \
      ~{maf} \
      ~{if (g) then "-g" else ""} \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g: ""
    x: ""
    n: ""
    p: ""
    quiet: ""
    seq_seq_pando_tpy: ""
    maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}