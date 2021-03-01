version 1.0

task VsnpFastaToSnpsTablepy {
  input {
    String? fast_a
    Boolean? v
    String prog
  }
  command <<<
    vsnp_fasta_to_snps_table_py \
      ~{prog} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "provide an aligned fasta"
    v: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}