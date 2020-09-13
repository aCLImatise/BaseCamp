version 1.0

task DnaseCutCounterpy {
  input {
    Boolean? atacseq_mode_default
  }
  command <<<
    dnase_cut_counter_py \
      ~{if (atacseq_mode_default) then "-A" else ""}
  >>>
  parameter_meta {
    atacseq_mode_default: "ATAC-seq mode (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}