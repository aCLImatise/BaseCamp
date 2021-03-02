version 1.0

task Rmapbs {
  input {
    File? output_file_name
    Boolean? chrom
    Boolean? start
    Boolean? number
    Boolean? suffix
    Boolean? mismatch
    Boolean? ambiguous
    Boolean? max_map
    Boolean? ag_wild
    Boolean? clip
    Boolean? verbose
    Boolean? about
    File fast_q_reads_file
  }
  command <<<
    rmapbs \
      ~{fast_q_reads_file} \
      ~{if (output_file_name) then "-output" else ""} \
      ~{if (chrom) then "-chrom" else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (number) then "-number" else ""} \
      ~{if (suffix) then "-suffix" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (ambiguous) then "-ambiguous" else ""} \
      ~{if (max_map) then "-max-map" else ""} \
      ~{if (ag_wild) then "-ag-wild" else ""} \
      ~{if (clip) then "-clip" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "output file name"
    chrom: "chromosomes in FASTA file or dir"
    start: "index of first read to map"
    number: "number of reads to map"
    suffix: "suffix of chrom files (assumes dir provided)"
    mismatch: "maximum allowed mismatches"
    ambiguous: "file to write names of ambiguously mapped reads"
    max_map: "maximum allowed mappings for a read"
    ag_wild: "map using A/G bisulfite wildcards"
    clip: "clip the specified adaptor"
    verbose: "print more run info"
    about: "print about message"
    fast_q_reads_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}