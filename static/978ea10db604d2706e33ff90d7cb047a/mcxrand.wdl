version 1.0

task Mcxrand {
  input {
    Boolean? print_this_help
    String? output_matrix_fname
    Boolean? write_binary
    String? imx
    String? icl
    Int? gen
    Int? add
    Int? shuffle
    String? pa
    Int? remove
  }
  command <<<
    mcxrand \
      ~{if (print_this_help) then "-h" else ""} \
      ~{if defined(output_matrix_fname) then ("-o " +  '"' + output_matrix_fname + '"') else ""} \
      ~{if (write_binary) then "--write-binary" else ""} \
      ~{if defined(imx) then ("-imx " +  '"' + imx + '"') else ""} \
      ~{if defined(icl) then ("-icl " +  '"' + icl + '"') else ""} \
      ~{if defined(gen) then ("-gen " +  '"' + gen + '"') else ""} \
      ~{if defined(add) then ("-add " +  '"' + add + '"') else ""} \
      ~{if defined(shuffle) then ("-shuffle " +  '"' + shuffle + '"') else ""} \
      ~{if defined(pa) then ("-pa " +  '"' + pa + '"') else ""} \
      ~{if defined(remove) then ("-remove " +  '"' + remove + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_this_help: "print this help"
    output_matrix_fname: "output matrix to <fname>"
    write_binary: "write binary format"
    imx: "input matrix"
    icl: "input clustering (shuffled version will be output)"
    gen: "node count"
    add: "add <num> edges not yet present"
    shuffle: "shuffle edge, repeat <num> times"
    pa: "/<m>          create graph with V nodes using preferential attachment, m edges per step"
    remove: "remove <num> edges"
  }
  output {
    File out_stdout = stdout()
  }
}