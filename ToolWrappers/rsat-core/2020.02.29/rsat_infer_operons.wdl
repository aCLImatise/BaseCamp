version 1.0

task RsatInferoperons {
  input {
    String? return
    Int? no_orf
    String infer_operons
    String jacques_dot_van_helden_backslash_at_univ_am_udot_fr
    String genomics
    String genes_dot
    String retrieve_seq
  }
  command <<<
    rsat infer_operons \
      ~{infer_operons} \
      ~{jacques_dot_van_helden_backslash_at_univ_am_udot_fr} \
      ~{genomics} \
      ~{genes_dot} \
      ~{retrieve_seq} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if defined(no_orf) then ("-noorf " +  '"' + no_orf + '"') else ""}
  >>>
  parameter_meta {
    return: ",leader,operon"
    no_orf: "[1mExample 5[0m\\nNote that operons can contain non-coding genes. For example, the\\nmetT operon contains a series of tRNA genes for methionine, leucine\\nand glutamina, respectively.\\ninfer-operons -org Escherichia_coli_GCF_000005845.2_ASM584v2 -q glnV\\n-q metU -q ileV \\ -return q_info,up_info,operon"
    infer_operons: "[1mDESCRIPTION[0m"
    jacques_dot_van_helden_backslash_at_univ_am_udot_fr: "[1mCATEGORY[0m"
    genomics: "[1mMETHOD[0m"
    genes_dot: "infer-operons -v 1 -org Escherichia_coli_GCF_000005845.2_ASM584v2 -q"
    retrieve_seq: "neighbour-genes"
  }
  output {
    File out_stdout = stdout()
  }
}