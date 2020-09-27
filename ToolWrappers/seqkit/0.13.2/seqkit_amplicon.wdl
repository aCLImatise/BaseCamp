version 1.0

task SeqkitAmplicon {
  input {
    Boolean? xy
    Boolean? y_invalid
    Boolean? xy_xyf_r
    Boolean? bed
    Boolean? flanking_region
    Int? forward
    Int? max_mismatch
    Boolean? only_positive_strand
    File? primer_file
    String? region
    Int? reverse
    Boolean? strict_mode
    Int? alphabet_guess_seq_length
    Boolean? id_ncbi
    String? id_regexp
    File? in_file_list
    Int? line_width
    File? out_file
    Boolean? quiet
    String? seq_type
    Int? threads
  }
  command <<<
    seqkit amplicon \
      ~{if (xy) then "-5-3-1" else ""} \
      ~{if (y_invalid) then "-x" else ""} \
      ~{if (xy_xyf_r) then "-3-1" else ""} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (flanking_region) then "--flanking-region" else ""} \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(max_mismatch) then ("--max-mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if (only_positive_strand) then "--only-positive-strand" else ""} \
      ~{if defined(primer_file) then ("--primer-file " +  '"' + primer_file + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if (strict_mode) then "--strict-mode" else ""} \
      ~{if defined(alphabet_guess_seq_length) then ("--alphabet-guess-seq-length " +  '"' + alphabet_guess_seq_length + '"') else ""} \
      ~{if (id_ncbi) then "--id-ncbi" else ""} \
      ~{if defined(id_regexp) then ("--id-regexp " +  '"' + id_regexp + '"') else ""} \
      ~{if defined(in_file_list) then ("--infile-list " +  '"' + in_file_list + '"') else ""} \
      ~{if defined(line_width) then ("--line-width " +  '"' + line_width + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(seq_type) then ("--seq-type " +  '"' + seq_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    xy: "x/y"
    y_invalid: ":y (invalid)"
    xy_xyf_r: "x/y\\n1 3 5    x/y\\nF             R"
    bed: "output in BED6+1 format with amplicon as 7th columns"
    flanking_region: "region is flanking region"
    forward: "forward primer (5'-primer-3'), degenerate bases allowed"
    max_mismatch: "max mismatch when matching primers"
    only_positive_strand: "only search on positive strand"
    primer_file: "3- or 2-column tabular primer file, with first column as primer name"
    region: "specify region to return. type \\\"seqkit amplicon -h\\\" for detail"
    reverse: "reverse primer (5'-primer-3'), degenerate bases allowed"
    strict_mode: "strict mode, i.e., discarding seqs not fully matching (shorter) given region range"
    alphabet_guess_seq_length: "length of sequence prefix of the first FASTA record based on which seqkit guesses the sequence type (0 for whole seq) (default 10000)"
    id_ncbi: "FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud..."
    id_regexp: "regular expression for parsing ID (default \\\"^(\\\\S+)\\\\s?\\\")"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    line_width: "line width when outputing FASTA format (0 for no wrap) (default 60)"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    quiet: "be quiet and do not show extra information"
    seq_type: "sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect by the first sequence) (default \\\"auto\\\")"
    threads: "number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also set with environment variable SEQKIT_THREADS) (default 2)"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}