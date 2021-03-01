version 1.0

task FcOvlpToGraph {
  input {
    Int? min_len
    Boolean? lfc
    String? min_idt
    String assembling
  }
  command <<<
    fc_ovlp_to_graph \
      ~{assembling} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if (lfc) then "--lfc" else ""} \
      ~{if defined(min_idt) then ("--min_idt " +  '"' + min_idt + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_len: "minimum length of the reads to be considered for"
    lfc: "use local flow constraint method rather than best overlap\\nmethod to resolve knots in string graph\\n"
    min_idt: ""
    assembling: "--min_idt MIN_IDT  minimum alignment identity of the reads to be considered"
  }
  output {
    File out_stdout = stdout()
  }
}