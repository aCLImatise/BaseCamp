version 1.0

task MakeFastaFromFastg.py {
  input {
    String gG
    String oO
  }
  command <<<
    make_fasta_from_fastg.py \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}