version 1.0

task DnaseWigTrackspy {
  input {
    Boolean? real
    Boolean? atacseq_mode_default
  }
  command <<<
    dnase_wig_tracks_py \
      ~{if (real) then "--real" else ""} \
      ~{if (atacseq_mode_default) then "-A" else ""}
  >>>
  parameter_meta {
    real: "Report cuts on the negative strand as positive numbers instead\\nof negative (default: False)"
    atacseq_mode_default: "ATAC-seq mode (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}