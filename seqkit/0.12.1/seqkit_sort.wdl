version 1.0

task SeqkitSort {
  input {
    Boolean? by_length
    Boolean? by_name
    Boolean? by_seq
    Boolean? ignore_case
    Boolean? keep_temp
    Boolean? natural_order
    Boolean? reverse
    Int? seq_prefix_length
    Boolean? two_pass
    Int? alphabet_guess_seq_length
    Boolean? id_ncbi
    String? id_regexp
    String? in_file_list
    Int? line_width
    String? out_file
    Boolean? quiet
    String? seq_type
    Int? threads
    String? flags
  }
  command <<<
    seqkit sort \
      ~{flags} \
      ~{true="--by-length" false="" by_length} \
      ~{true="--by-name" false="" by_name} \
      ~{true="--by-seq" false="" by_seq} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--keep-temp" false="" keep_temp} \
      ~{true="--natural-order" false="" natural_order} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(seq_prefix_length) then ("--seq-prefix-length " +  '"' + seq_prefix_length + '"') else ""} \
      ~{true="--two-pass" false="" two_pass} \
      ~{if defined(alphabet_guess_seq_length) then ("--alphabet-guess-seq-length " +  '"' + alphabet_guess_seq_length + '"') else ""} \
      ~{true="--id-ncbi" false="" id_ncbi} \
      ~{if defined(id_regexp) then ("--id-regexp " +  '"' + id_regexp + '"') else ""} \
      ~{if defined(in_file_list) then ("--infile-list " +  '"' + in_file_list + '"') else ""} \
      ~{if defined(line_width) then ("--line-width " +  '"' + line_width + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(seq_type) then ("--seq-type " +  '"' + seq_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    by_length: "by sequence length"
    by_name: "by full name instead of just id"
    by_seq: "by sequence"
    ignore_case: "ignore case"
    keep_temp: "keep tempory FASTA and .fai file when using 2-pass mode"
    natural_order: "sort in natural order, when sorting by IDs/full name"
    reverse: "reverse the result"
    seq_prefix_length: "length of sequence prefix on which seqkit sorts by sequences (0 for whole sequence) (default 10000)"
    two_pass: "two-pass mode read files twice to lower memory usage. (only for FASTA format)"
    alphabet_guess_seq_length: "length of sequence prefix of the first FASTA record based on which seqkit guesses the sequence type (0 for whole seq) (default 10000)"
    id_ncbi: "FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud..."
    id_regexp: "regular expression for parsing ID (default \"^(\\S+)\\s?\")"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    line_width: "line width when outputing FASTA format (0 for no wrap) (default 60)"
    out_file: "out file (\"-\" for stdout, suffix .gz for gzipped out) (default \"-\")"
    quiet: "be quiet and do not show extra information"
    seq_type: "sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect by the first sequence) (default \"auto\")"
    threads: "number of CPUs. (default value: 1 for single-CPU PC, 2 for others) (default 2)"
    flags: ""
  }
}