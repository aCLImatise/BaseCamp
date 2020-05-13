version 1.0

task VsnpFastaGbkGffByAcc.py {
  input {
    String aA
    Boolean fF
    Boolean bB
    Boolean gG
    Boolean vV
    String? progProg
  }
  command <<<
    vsnp_fasta_gbk_gff_by_acc.py \
      ~{progProg} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-b" false="" bB} \
      ~{true="-g" false="" gG} \
      ~{true="-v" false="" vV}
  >>>
}