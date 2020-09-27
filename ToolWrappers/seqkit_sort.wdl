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
    File? in_file_list
    Int? line_width
    File? out_file
    Boolean? quiet
    String? seq_type
    Int? threads
  }
  command <<<
    seqkit sort \
      ~{if (by_length) then "--by-length" else ""} \
      ~{if (by_name) then "--by-name" else ""} \
      ~{if (by_seq) then "--by-seq" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if (natural_order) then "--natural-order" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(seq_prefix_length) then ("--seq-prefix-length " +  '"' + seq_prefix_length + '"') else ""} \
      ~{if (two_pass) then "--two-pass" else ""} \
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