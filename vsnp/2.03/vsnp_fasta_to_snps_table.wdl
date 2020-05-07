version 1.0

task VsnpFastaToSnpsTable.py {
  input {
    String fF
    Boolean vV
    String? progProg
  }
  command <<<
    vsnp_fasta_to_snps_table.py \
      ~{progProg} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}