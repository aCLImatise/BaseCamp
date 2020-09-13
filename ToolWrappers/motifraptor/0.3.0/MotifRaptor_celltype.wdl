version 1.0

task MotifRaptorCelltype {
  input {
    Int? snp_hit_with_seq
    Int? snp_hit
    Int? snp_non_hit
    Directory? workdir
    Int? threads
  }
  command <<<
    MotifRaptor celltype \
      ~{if defined(snp_hit_with_seq) then ("--snp_hit_withseq " +  '"' + snp_hit_with_seq + '"') else ""} \
      ~{if defined(snp_hit) then ("--snp_hit " +  '"' + snp_hit + '"') else ""} \
      ~{if defined(snp_non_hit) then ("--snp_non_hit " +  '"' + snp_non_hit + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    snp_hit_with_seq: "need header and columns in this text file with\\nsequence (CHR is only a number): ID CHR POS REF ALT"
    snp_hit: "need header and columns in this text file (CHR is only\\na number): ID CHR POS"
    snp_non_hit: "need header and columns in this text file (CHR is only\\na number): ID CHR POS"
    workdir: "Working directory"
    threads: "number of threads\\n"
  }
  output {
    File out_stdout = stdout()
  }
}