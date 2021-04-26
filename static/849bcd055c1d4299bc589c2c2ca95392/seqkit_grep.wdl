version 1.0

task SeqkitGrep {
  input {
    Boolean? n__c
    Boolean? one_two
    Boolean? by_name
    Boolean? by_seq
    Boolean? circular
    Boolean? degenerate
    Boolean? delete_matched
    Boolean? ignore_case
    Boolean? immediate_output
    Boolean? invert_match
    Int? max_mismatch
    Boolean? only_positive_strand
    Int? pattern
    File? pattern_file
    Int? region
    Boolean? use_regexp
    Int? alphabet_guess_seq_length
    Boolean? id_ncbi
    String? id_regexp
    File? in_file_list
    Int? line_width
    File? out_file
    Boolean? quiet
    String? seq_type
    Int? threads
    String seq
  }
  command <<<
    seqkit grep \
      ~{seq} \
      ~{if (n__c) then "-1" else ""} \
      ~{if (one_two) then "-12" else ""} \
      ~{if (by_name) then "--by-name" else ""} \
      ~{if (by_seq) then "--by-seq" else ""} \
      ~{if (circular) then "--circular" else ""} \
      ~{if (degenerate) then "--degenerate" else ""} \
      ~{if (delete_matched) then "--delete-matched" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (immediate_output) then "--immediate-output" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if defined(max_mismatch) then ("--max-mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if (only_positive_strand) then "--only-positive-strand" else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(pattern_file) then ("--pattern-file " +  '"' + pattern_file + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (use_regexp) then "--use-regexp" else ""} \
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
  runtime {
    docker: "quay.io/biocontainers/seqkit:0.16.0--h9ee0642_0"
  }
  parameter_meta {
    n__c: ":-1                      n\\n2:-2      C G T N a c g t\\n1:-1    A C G T N a c g t n\\n1:12    A C G T N a c g t n"
    one_two: ":-1    A C G T N a c g t n"
    by_name: "match by full name instead of just ID"
    by_seq: "search subseq on seq, both positive and negative strand are searched, and mismatch allowed using flag -m/--max-mismatch"
    circular: "circular genome"
    degenerate: "pattern/motif contains degenerate base"
    delete_matched: "delete a pattern right after being matched, this keeps the firstly matched data and speedups when using regular expressions"
    ignore_case: "ignore case"
    immediate_output: "print output immediately, do not use write buffer"
    invert_match: "invert the sense of matching, to select non-matching records"
    max_mismatch: "max mismatch when matching by seq. For large genomes like human genome, using mapping/alignment tools would be faster"
    only_positive_strand: "only search on positive strand"
    pattern: "search pattern (multiple values supported. Attention: use double quotation marks for patterns containing comma, e.g., -p '\\\"A{2,}\\\"'))"
    pattern_file: "pattern file (one record per line)"
    region: "specify sequence region for searching. e.g 1:12 for first 12 bases, -12:-1 for last 12 bases"
    use_regexp: "patterns are regular expression"
    alphabet_guess_seq_length: "length of sequence prefix of the first FASTA record based on which seqkit guesses the sequence type (0 for whole seq) (default 10000)"
    id_ncbi: "FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud..."
    id_regexp: "regular expression for parsing ID (default \\\"^(\\\\S+)\\\\s?\\\")"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    line_width: "line width when outputing FASTA format (0 for no wrap) (default 60)"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    quiet: "be quiet and do not show extra information"
    seq_type: "sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect by the first sequence) (default \\\"auto\\\")"
    threads: "number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also set with environment variable SEQKIT_THREADS) (default 2)"
    seq: "A C G T N a c g t n"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}