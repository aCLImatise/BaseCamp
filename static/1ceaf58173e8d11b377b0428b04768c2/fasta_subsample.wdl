version 1.0

task Fastasubsample {
  input {
    String? len
    String? off
    Boolean? nor_and
    String? seed
    File file_dot
  }
  command <<<
    fasta_subsample \
      ~{file_dot} \
      ~{if defined(len) then ("-len " +  '"' + len + '"') else ""} \
      ~{if defined(off) then ("-off " +  '"' + off + '"') else ""} \
      ~{if (nor_and) then "-norand" else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    len: ""
    off: ""
    nor_and: ""
    seed: ""
    file_dot: "By default the sequences will be selected using a random number"
  }
  output {
    File out_stdout = stdout()
  }
}