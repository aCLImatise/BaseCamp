version 1.0

task GtfToSam {
  input {
    Boolean? r_slash_reference_seq
    Boolean? f_slash_raw_fp_km
    String cufflinks
  }
  command <<<
    gtf_to_sam \
      ~{cufflinks} \
      ~{if (r_slash_reference_seq) then "-r/--reference-seq" else ""} \
      ~{if (f_slash_raw_fp_km) then "-F/--raw-fpkm" else ""}
  >>>
  parameter_meta {
    r_slash_reference_seq: "reference fasta file                     [ default:   NULL ]"
    f_slash_raw_fp_km: "use FPKM instead of isoform fraction"
    cufflinks: ""
  }
  output {
    File out_stdout = stdout()
  }
}