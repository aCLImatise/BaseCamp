version 1.0

task AmptkIllumina3 {
  input {
    Boolean? forward
    Boolean? reverse
    Boolean? index
    Boolean? mapping_file
    Boolean? trim_len
    Boolean? pad
    Directory? out
    Boolean? fwd_primer
    Boolean? rev_primer
    Boolean? min_len
    Boolean? read_length
    Boolean? rescue_forward
    Boolean? barcode_fast_a
    Boolean? primer_mismatch
    Boolean? barcode_mismatch
    Boolean? barcode_rev_comp
    Boolean? merge_method
    Boolean? cpus
    Boolean? cleanup
    Boolean? u_search
  }
  command <<<
    amptk illumina3 \
      ~{if (forward) then "--forward" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (mapping_file) then "--mapping_file" else ""} \
      ~{if (trim_len) then "--trim_len" else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (fwd_primer) then "--fwd_primer" else ""} \
      ~{if (rev_primer) then "--rev_primer" else ""} \
      ~{if (min_len) then "--min_len" else ""} \
      ~{if (read_length) then "--read_length" else ""} \
      ~{if (rescue_forward) then "--rescue_forward" else ""} \
      ~{if (barcode_fast_a) then "--barcode_fasta" else ""} \
      ~{if (primer_mismatch) then "--primer_mismatch" else ""} \
      ~{if (barcode_mismatch) then "--barcode_mismatch" else ""} \
      ~{if (barcode_rev_comp) then "--barcode_rev_comp" else ""} \
      ~{if (merge_method) then "--merge_method" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (cleanup) then "--cleanup" else ""} \
      ~{if (u_search) then "--usearch" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  parameter_meta {
    forward: "FASTQ R1 (forward) file (Required)"
    reverse: "FASTQ R2 (reverse) file (Required)"
    index: "FASTQ I3 (index) file (Required)"
    mapping_file: "QIIME-like mapping file."
    trim_len: "Length to trim/pad reads. Default: 300"
    pad: "Pad reads with Ns if shorter than --trim_len. Default: off [on,off]"
    out: "Output folder name. Default: amptk-data"
    fwd_primer: "Forward primer sequence"
    rev_primer: "Reverse primer sequence"
    min_len: "Minimum length read to keep. Default: 100"
    read_length: "Illumina Read length (250 if 2 x 250 bp run). Default: auto detect"
    rescue_forward: "Rescue Forward Reads if PE do not merge, e.g. long amplicons. Default: on [on,off]"
    barcode_fast_a: "Multi-fasta file of barocdes."
    primer_mismatch: "Number of mismatches in primers to allow. Default: 2"
    barcode_mismatch: "Number of mismatches in index (barcodes) to allow. Default: 2"
    barcode_rev_comp: "Reverse complement barcode sequences in mapping file."
    merge_method: "Software to use for PE merging. Default: usearch [usearch,vsearch]"
    cpus: "Number of CPUs to use. Default: all"
    cleanup: "Remove intermediate files."
    u_search: "USEARCH executable. Default: usearch9"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}