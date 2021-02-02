version 1.0

task AmptkSRA {
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
    Boolean? require_primer
    Boolean? primer_mismatch
    Boolean? cpus
    Boolean? cleanup
    Boolean? u_search
    String arguments
  }
  command <<<
    amptk SRA \
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
      ~{if (require_primer) then "--require_primer" else ""} \
      ~{if (primer_mismatch) then "--primer_mismatch" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (cleanup) then "--cleanup" else ""} \
      ~{if (u_search) then "--usearch" else ""}
  >>>
  parameter_meta {
    fast_q: "Input folder of FASTQ files (Required)"
    out: "Output folder name. Default: amptk-data"
    mapping_file: "QIIME-like mapping file"
    fwd_primer: "Forward primer sequence. Default: fITS7"
    rev_primer: "Reverse primer sequence Default: ITS4"
    trim_len: "Length to trim/pad reads. Default: 250"
    pad: "Pad reads with Ns if shorter than --trim_len. Default: off [on,off]"
    min_len: "Minimum length read to keep. Default: 50"
    full_length: "Keep only full length sequences."
    require_primer: "Require the Forward primer to be present. Default: on [on,off]"
    primer_mismatch: "Number of mismatches in primers to allow. Default: 2"
    cpus: "Number of CPUs to use. Default: all"
    cleanup: "Remove intermediate files."
    u_search: "USEARCH executable. Default: usearch9"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}