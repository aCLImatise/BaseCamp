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
      ~{true="-t" false="" int_number_threads} \
      ~{true="-o" false="" str_set_prefix} \
      ~{true="-fmt" false="" fmt} \
      ~{true="-idy" false="" id_y} \
      ~{true="-slen" false="" slen} \
      ~{true="-alen" false="" alen} \
      ~{true="-ind" false="" ind} \
      ~{true="-clr" false="" clr} \
      ~{true="-unique" false="" unique} \
      ~{true="-sen" false="" sen} \
      ~{true="-dp" false="" dp} \
      ~{true="-one" false="" set_one_one} \
      ~{true="-gp" false="" gp}
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
}