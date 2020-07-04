version 1.0

task VsnpFastaGbkGffByAcc.py {
  input {
    String? accession
    Boolean? fast_a
    Boolean? gbk
    Boolean? gff
    Boolean? v
    String prog
  }
  command <<<
    vsnp_fasta_gbk_gff_by_acc.py \
      ~{prog} \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--gbk" false="" gbk} \
      ~{true="--gff" false="" gff} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    accession: "NCBI chromosome number"
    fast_a: "get FASTA file"
    gbk: "get gbk file"
    gff: "get gff file"
    v: ""
    prog: ""
  }
}