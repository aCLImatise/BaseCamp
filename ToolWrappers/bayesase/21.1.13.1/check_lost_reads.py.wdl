version 1.0

task CheckLostReadspy {
  input {
    Int? aln_sumone
    Int? aln_sum_two
    File? fq
    File? out
  }
  command <<<
    check_lost_reads_py \
      ~{if defined(aln_sumone) then ("--alnSum1 " +  '"' + aln_sumone + '"') else ""} \
      ~{if defined(aln_sum_two) then ("--alnSum2 " +  '"' + aln_sum_two + '"') else ""} \
      ~{if defined(fq) then ("--fq " +  '"' + fq + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    aln_sumone: "The G1 alignment summary file containing all read\\ntypes [Required]"
    aln_sum_two: "The G2 alignment summary file containing all read\\ntypes [Required]"
    fq: "FQ file used in alignment [Required]"
    out: "Output file containing check info [Required]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}