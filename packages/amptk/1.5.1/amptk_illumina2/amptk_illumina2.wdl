version 1.0

task AmptkIllumina2 {
  input {
    Boolean? fast_q
    Boolean? reverse
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
    String? barcode_not_anchored
    Boolean? full_length
    Boolean? primer_mismatch
    Boolean? merge_method
    Boolean? cpus
    Boolean? u_search
    String arguments
  }
  command <<<
    amptk illumina2 \
      ~{arguments} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
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
      ~{if defined(barcode_not_anchored) then ("--barcode_not_anchored " +  '"' + barcode_not_anchored + '"') else ""} \
      ~{if (full_length) then "--full_length" else ""} \
      ~{if (primer_mismatch) then "--primer_mismatch" else ""} \
      ~{if (merge_method) then "--merge_method" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (u_search) then "--usearch" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.1--py_1"
  }
  parameter_meta {
    fast_q: "Illumina R1 (PE forward) reads (Required)"
    reverse: "Illumina R2 (PE reverse) reads."
    out: "Output base name. Default: illumina2"
    mapping_file: "QIIME-like mapping file"
    fwd_primer: "Forward primer sequence. Default: fITS7"
    rev_primer: "Reverse primer sequence Default: ITS4"
    name_prefix: "Prefix for re-naming reads. Default: R_"
    trim_len: "Length to trim/pad reads. Default: 300"
    pad: "Pad reads with Ns if shorter than --trim_len. Default: off [on,off]"
    min_len: "Minimum length read to keep. Default: 100"
    barcode_fast_a: "FASTA file containing barcodes."
    reverse_barcode: "FASTA file containing R2 barcodes."
    barcode_mismatch: "Number of mismatches in barcode to allow. Default: 0"
    barcode_not_anchored: "are not anchored to start of read."
    full_length: "Keep only full length sequences."
    primer_mismatch: "Number of mismatches in primers to allow. Default: 2"
    merge_method: "Software to use for PE merging. Default: usearch [usearch,vsearch]"
    cpus: "Number of CPUs to use. Default: all"
    u_search: "USEARCH executable. Default: usearch9"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}