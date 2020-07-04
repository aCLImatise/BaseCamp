version 1.0

task VsnpFastaToSnpsTable.py {
  input {
    String? fast_a
    Boolean? v
    String prog
  }
  command <<<
    vsnp_fasta_to_snps_table.py \
      ~{prog} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    fast_a: "provide an aligned fasta"
    v: ""
    prog: ""
  }
}