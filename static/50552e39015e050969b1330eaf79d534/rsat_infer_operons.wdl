version 1.0

task RsatInferoperons {
  input {
    String? return
    String? _return_qinfoupinfooperon
    String infer_operons
    String genomics
    String genes_dot
    String retrieve_seq
  }
  command <<<
    rsat infer_operons \
      ~{infer_operons} \
      ~{genomics} \
      ~{genes_dot} \
      ~{retrieve_seq} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if defined(_return_qinfoupinfooperon) then ("-q " +  '"' + _return_qinfoupinfooperon + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    return: ",leader,operon"
    _return_qinfoupinfooperon: "\\ -return q_info,up_info,operon"
    infer_operons: "[1mDESCRIPTION[0m"
    genomics: "[1mMETHOD[0m"
    genes_dot: "infer-operons -v 1 -org Escherichia_coli_GCF_000005845.2_ASM584v2 -q"
    retrieve_seq: "neighbour-genes"
  }
  output {
    File out_stdout = stdout()
  }
}