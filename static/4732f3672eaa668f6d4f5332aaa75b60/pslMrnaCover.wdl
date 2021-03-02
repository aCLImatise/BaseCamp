version 1.0

task PslMrnaCover {
  input {
    Int? minsize
    String? list_zero
    String mrna_dot_psl
  }
  command <<<
    pslMrnaCover \
      ~{mrna_dot_psl} \
      ~{if defined(minsize) then ("-minSize " +  '"' + minsize + '"') else ""} \
      ~{if defined(list_zero) then ("-listZero " +  '"' + list_zero + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minsize: "- default 100.  Minimum size of mRNA considered"
    list_zero: "- List accessions that don't align in zero.tab"
    mrna_dot_psl: ""
  }
  output {
    File out_stdout = stdout()
  }
}