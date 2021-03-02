version 1.0

task AmptkIon {
  input {
    Boolean? fast_q
    Boolean? out
    Boolean? mapping_file
    Boolean? fwd_primer
    Boolean? rev_primer
    Boolean? barcodes
    Boolean? name_prefix
    Boolean? trim_len
    Boolean? pad
    Boolean? min_len
    Boolean? full_length
    Boolean? barcode_fast_a
    Boolean? barcode_mismatch
    Boolean? primer_mismatch
    Boolean? cpus
    Boolean? mult_samples
    String arguments
  }
  command <<<
    amptk ion \
      ~{arguments} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (mapping_file) then "--mapping_file" else ""} \
      ~{if (fwd_primer) then "--fwd_primer" else ""} \
      ~{if (rev_primer) then "--rev_primer" else ""} \
      ~{if (barcodes) then "--barcodes" else ""} \
      ~{if (name_prefix) then "--name_prefix" else ""} \
      ~{if (trim_len) then "--trim_len" else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if (min_len) then "--min_len" else ""} \
      ~{if (full_length) then "--full_length" else ""} \
      ~{if (barcode_fast_a) then "--barcode_fasta" else ""} \
      ~{if (barcode_mismatch) then "--barcode_mismatch" else ""} \
      ~{if (primer_mismatch) then "--primer_mismatch" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (mult_samples) then "--mult_samples" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "Input BAM or FASTQ file (Required)"
    out: "Output base name. Default: out"
    mapping_file: "QIIME-like mapping file"
    fwd_primer: "Forward primer sequence. Default: fITS7"
    rev_primer: "Reverse primer sequence Default: ITS4"
    barcodes: "Barcodes used (list, e.g: 1,3,4,5,20). Default: all"
    name_prefix: "Prefix for re-naming reads. Default: R_"
    trim_len: "Length to trim/pad reads. Default: 300"
    pad: "Pad reads with Ns if shorter than --trim_len. Default: off [on,off]"
    min_len: "Minimum length read to keep. Default: 100"
    full_length: "Keep only full length sequences."
    barcode_fast_a: "FASTA file containing barcodes. Default: pgm_barcodes.fa"
    barcode_mismatch: "Number of mismatches in barcode to allow. Default: 0"
    primer_mismatch: "Number of mismatches in primers to allow. Default: 2"
    cpus: "Number of CPUs to use. Default: all"
    mult_samples: "Combine multiple chip runs, name prefix for chip"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}