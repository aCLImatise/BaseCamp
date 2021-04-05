version 1.0

task AmptkPacbio {
  input {
    Boolean? bam
    Boolean? barcodes
    Boolean? out
    Boolean? fwd_primer
    Boolean? rev_primer
    Boolean? int_primer
    Boolean? min_len
    Boolean? primer_mismatch
    Boolean? cpus
    String arguments
  }
  command <<<
    amptk pacbio \
      ~{arguments} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (barcodes) then "--barcodes" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (fwd_primer) then "--fwd_primer" else ""} \
      ~{if (rev_primer) then "--rev_primer" else ""} \
      ~{if (int_primer) then "--int_primer" else ""} \
      ~{if (min_len) then "--min_len" else ""} \
      ~{if (primer_mismatch) then "--primer_mismatch" else ""} \
      ~{if (cpus) then "--cpus" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  parameter_meta {
    bam: "Directory/Folder contained 1 BAM file per sample (Required)"
    barcodes: "FASTA file of Barcodes used to demultiplex with lima (Required)"
    out: "Output base name. (Required)"
    fwd_primer: "Forward primer sequence. Default: ITS1-F"
    rev_primer: "Reverse primer sequence. Default: LR3"
    int_primer: "Internal/nested primer for orientation."
    min_len: "Minimum length read to keep. Default: 800"
    primer_mismatch: "Number of mismatches in primers to allow. Default: 3"
    cpus: "Number of CPUs to use. Default: all"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}