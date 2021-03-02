version 1.0

task VsnpFastaGbkGffByAccpy {
  input {
    Int? accession
    Boolean? fast_a
    Boolean? gbk
    Boolean? gff
    Boolean? v
    String prog
    String fast_a_gbk_gff_by_acc_do_tpy
  }
  command <<<
    vsnp_fasta_gbk_gff_by_acc_py \
      ~{prog} \
      ~{fast_a_gbk_gff_by_acc_do_tpy} \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (gbk) then "--gbk" else ""} \
      ~{if (gff) then "--gff" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    accession: "NCBI chromosome number"
    fast_a: "get FASTA file"
    gbk: "get gbk file"
    gff: "get gff file"
    v: ""
    prog: ""
    fast_a_gbk_gff_by_acc_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}