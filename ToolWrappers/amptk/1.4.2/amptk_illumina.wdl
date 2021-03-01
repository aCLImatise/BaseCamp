version 1.0

task AmptkIllumina {
  input {
    Boolean? fast_q
    Directory? out
    Boolean? mapping_file
    Boolean? fwd_primer
    Boolean? rev_primer
    Boolean? trim_len
    Boolean? pad
    Boolean? min_len
    Boolean? full_length
    Boolean? reads
    Boolean? read_length
    Boolean? rescue_forward
    Boolean? require_primer
    Boolean? primer_mismatch
    Boolean? barcode_mismatch
    Boolean? cpus
    Boolean? cleanup
    Boolean? merge_method
    Boolean? u_search
    String arguments
  }
  command <<<
    amptk illumina \
      ~{arguments} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (mapping_file) then "--mapping_file" else ""} \
      ~{if (fwd_primer) then "--fwd_primer" else ""} \
      ~{if (rev_primer) then "--rev_primer" else ""} \
      ~{if (trim_len) then "--trim_len" else ""} \
      ~{if (pad) then "--pad" else ""} \
      ~{if (min_len) then "--min_len" else ""} \
      ~{if (full_length) then "--full_length" else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if (read_length) then "--read_length" else ""} \
      ~{if (rescue_forward) then "--rescue_forward" else ""} \
      ~{if (require_primer) then "--require_primer" else ""} \
      ~{if (primer_mismatch) then "--primer_mismatch" else ""} \
      ~{if (barcode_mismatch) then "--barcode_mismatch" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (cleanup) then "--cleanup" else ""} \
      ~{if (merge_method) then "--merge_method" else ""} \
      ~{if (u_search) then "--usearch" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "Input folder of FASTQ files (Required)"
    out: "Output folder name. Default: amptk-data"
    mapping_file: "QIIME-like mapping file"
    fwd_primer: "Forward primer sequence. Default: fITS7"
    rev_primer: "Reverse primer sequence Default: ITS4"
    trim_len: "Length to trim/pad reads. Default: 300"
    pad: "Pad reads with Ns if shorter than --trim_len. Default: off [on,off]"
    min_len: "Minimum length read to keep. Default: 100"
    full_length: "Keep only full length sequences."
    reads: "Paired-end or forward reads. Default: paired [paired, forward]"
    read_length: "Illumina Read length (250 if 2 x 250 bp run). Default: auto detect"
    rescue_forward: "Rescue Forward Reads if PE do not merge, e.g. long amplicons. Default: on [on,off]"
    require_primer: "Require the Forward primer to be present. Default: on [on,off]"
    primer_mismatch: "Number of mismatches in primers to allow. Default: 2"
    barcode_mismatch: "Number of mismatches in barcode to allow. Default: 1"
    cpus: "Number of CPUs to use. Default: all"
    cleanup: "Remove intermediate files."
    merge_method: "Software to use for PE merging. Default: usearch [usearch,vsearch]"
    u_search: "USEARCH executable. Default: usearch9"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}