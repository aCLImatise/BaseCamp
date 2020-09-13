version 1.0

task Rmapbspe {
  input {
    File? output_file_name
    Boolean? chrom
    Boolean? start
    Boolean? number
    Boolean? suffix
    Boolean? mismatch
    Boolean? max_map
    Boolean? clip
    Boolean? fra_glen
    Boolean? suffix_len
    Boolean? verbose
    Boolean? about
    File fast_q_reads_file
  }
  command <<<
    rmapbs_pe \
      ~{fast_q_reads_file} \
      ~{if (output_file_name) then "-output" else ""} \
      ~{if (chrom) then "-chrom" else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (number) then "-number" else ""} \
      ~{if (suffix) then "-suffix" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (max_map) then "-max-map" else ""} \
      ~{if (clip) then "-clip" else ""} \
      ~{if (fra_glen) then "-fraglen" else ""} \
      ~{if (suffix_len) then "-suffix-len" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  parameter_meta {
    output_file_name: "output file name"
    chrom: "chromosomes in FASTA file or dir"
    start: "index of first read to map"
    number: "number of reads to map"
    suffix: "suffix of chrom files (assumes dir provided)"
    mismatch: "maximum allowed mismatches"
    max_map: "maximum allowed mappings for a read"
    clip: "clip the specified adaptor"
    fra_glen: "max fragment length"
    suffix_len: "Suffix length of reads name"
    verbose: "print more run info"
    about: "print about message"
    fast_q_reads_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}