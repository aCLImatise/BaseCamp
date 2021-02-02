version 1.0

task GSAlign {
  input {
    Boolean? int_number_threads
    Boolean? str_set_prefix
    Boolean? fmt
    Boolean? id_y
    Boolean? slen
    Boolean? alen
    Boolean? ind
    Boolean? clr
    Boolean? unique
    Boolean? sen
    Boolean? dp
    Boolean? set_one_one
    Boolean? gp
  }
  command <<<
    GSAlign \
      ~{if (int_number_threads) then "-t" else ""} \
      ~{if (str_set_prefix) then "-o" else ""} \
      ~{if (fmt) then "-fmt" else ""} \
      ~{if (id_y) then "-idy" else ""} \
      ~{if (slen) then "-slen" else ""} \
      ~{if (alen) then "-alen" else ""} \
      ~{if (ind) then "-ind" else ""} \
      ~{if (clr) then "-clr" else ""} \
      ~{if (unique) then "-unique" else ""} \
      ~{if (sen) then "-sen" else ""} \
      ~{if (dp) then "-dp" else ""} \
      ~{if (set_one_one) then "-one" else ""} \
      ~{if (gp) then "-gp" else ""}
  >>>
  parameter_meta {
    int_number_threads: "INT     number of threads [8]"
    str_set_prefix: "STR     Set the prefix of the output files [output]"
    fmt: "INT     Set the output format 1:maf, 2:aln [1]"
    id_y: "INT     Set the minimal sequence identity (0-100) of a local alignment [70]"
    slen: "INT     Set the minimal seed length [15]"
    alen: "INT     Set the minimal alignment length [200]"
    ind: "INT     Set the maximal indel size [25]"
    clr: "INT     Set the minimal cluster size [200]"
    unique: "Output unique alignment only [false]"
    sen: "Sensitive mode [False]"
    dp: "Output Dot-plots"
    set_one_one: "set one on one aligment mode[false]"
    gp: "STR     Specify the path of gnuplot"
  }
  output {
    File out_stdout = stdout()
  }
}