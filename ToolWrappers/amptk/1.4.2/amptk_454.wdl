version 1.0

task Amptk54 {
  input {
    Boolean? fast_a
    Boolean? qual
    Boolean? out
    Boolean? mapping_file
    Boolean? fwd_primer
    Boolean? rev_primer
    Boolean? name_prefix
    Boolean? trim_len
    Boolean? pad
    Boolean? min_len
    Boolean? barcode_fast_a
    Boolean? reverse_barcode
    Boolean? barcode_mismatch
    Boolean? primer_mismatch
    Boolean? cpus
    String arguments
  }
  command <<<
    amptk _54 \
      ~{arguments} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (qual) then "--qual" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (mapping_file) then "--mapping_file" else ""} \
      ~{if (fwd_primer) then "--fwd_primer" else ""} \
      ~{if (rev_primer) then "--rev_primer" else ""} \
      ~{if (name_prefix) then "--name_prefix" else ""} \
      ~{if (trim_len) then "--trim_len" else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if (min_len) then "--min_len" else ""} \
      ~{if (barcode_fast_a) then "--barcode_fasta" else ""} \
      ~{if (reverse_barcode) then "--reverse_barcode" else ""} \
      ~{if (barcode_mismatch) then "--barcode_mismatch" else ""} \
      ~{if (primer_mismatch) then "--primer_mismatch" else ""} \
      ~{if (cpus) then "--cpus" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "Input file (SFF, FASTA, or FASTQ) (Required)"
    qual: "QUAL file (Required if -i is FASTA)."
    out: "Output base name. Default: out"
    mapping_file: "QIIME-like mapping file"
    fwd_primer: "Forward primer sequence. Default: fITS7"
    rev_primer: "Reverse primer sequence Default: ITS4"
    name_prefix: "Prefix for re-naming reads. Default: R_"
    trim_len: "Length to trim/pad reads. Default: 250"
    pad: "Pad reads with Ns if shorter than --trim_len. Default: off [on,off]"
    min_len: "Minimum length read to keep. Default: 50"
    barcode_fast_a: "FASTA file containing barcodes. (Required)"
    reverse_barcode: "FASTA file containing 3' barcodes. Default: none"
    barcode_mismatch: "Number of mismatches in barcode to allow. Default: 0"
    primer_mismatch: "Number of mismatches in primers to allow. Default: 2"
    cpus: "Number of CPUs to use. Default: all"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}