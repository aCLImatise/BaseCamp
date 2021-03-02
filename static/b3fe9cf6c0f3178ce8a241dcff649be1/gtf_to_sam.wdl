version 1.0

task GtfToSam {
  input {
    Boolean? reference_seq
    Boolean? raw_fp_km
    String cufflinks
  }
  command <<<
    gtf_to_sam \
      ~{cufflinks} \
      ~{if (reference_seq) then "--reference-seq" else ""} \
      ~{if (raw_fp_km) then "--raw-fpkm" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_seq: "reference fasta file                     [ default:   NULL ]"
    raw_fp_km: "use FPKM instead of isoform fraction"
    cufflinks: ""
  }
  output {
    File out_stdout = stdout()
  }
}