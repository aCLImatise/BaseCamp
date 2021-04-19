version 1.0

task MetagraphDNAExtend {
  input {
    Boolean? min_count
    Boolean? max_count
    Boolean? reference
    Boolean? fwd_and_reverse
    Boolean? annotator
    File? outfile_base
    Boolean? verbose
    String? i
    Int file_one
  }
  command <<<
    metagraph_DNA extend \
      ~{file_one} \
      ~{if (min_count) then "--min-count" else ""} \
      ~{if (max_count) then "--max-count" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (fwd_and_reverse) then "--fwd-and-reverse" else ""} \
      ~{if (annotator) then "--annotator" else ""} \
      ~{if (outfile_base) then "--outfile-base" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    min_count: "[INT]    min k-mer abundance, including [1]"
    max_count: "[INT]    max k-mer abundance, excluding [inf]"
    reference: "[STR]    basename of reference sequence (for parsing VCF files) []"
    fwd_and_reverse: "add both forward and reverse complement sequences [off]"
    annotator: "[STR]    annotator to extend []"
    outfile_base: "[STR] basename of output file []"
    verbose: "switch on verbose output [off]"
    i: ""
    file_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile_base = "${in_outfile_base}"
  }
}