version 1.0

task SeqkitGrep {
  input {
    Boolean? c_g_t
    Boolean? by_name
    Boolean? by_seq
    Boolean? degenerate
    Boolean? delete_matched
    Boolean? ignore_case
    Boolean? invert_match
    Int? max_mismatch
    String? pattern
    String? pattern_file
    String? region
    Boolean? use_regexp
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
    seqkit grep \
      ~{flags} \
      ~{true="-12" false="" c_g_t} \
      ~{true="--by-name" false="" by_name} \
      ~{true="--by-seq" false="" by_seq} \
      ~{true="--degenerate" false="" degenerate} \
      ~{true="--delete-matched" false="" delete_matched} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--invert-match" false="" invert_match} \
      ~{if defined(max_mismatch) then ("--max-mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(pattern_file) then ("--pattern-file " +  '"' + pattern_file + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{true="--use-regexp" false="" use_regexp} \
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
    c_g_t: ":-1    A C G T N a c g t n"
    by_name: "match by full name instead of just id"
    by_seq: "search subseq on seq, only positive strand is searched, and mismatch allowed using flag -m/--max-mismatch"
    degenerate: "pattern/motif contains degenerate base"
    delete_matched: "delete a pattern right after being matched, this keeps the firstly matched data and speedups when using regular expressions"
    ignore_case: "ignore case"
    invert_match: "invert the sense of matching, to select non-matching records"
    max_mismatch: "max mismatch when matching by seq. For large genomes like human genome, using mapping/alignment tools would be faster"
    pattern: "search pattern (multiple values supported. Attention: use double quotation marks for patterns containing comma, e.g., -p '\"A{2,}\"'))"
    pattern_file: "pattern file (one record per line)"
    region: "specify sequence region for searching. e.g 1:12 for first 12 bases, -12:-1 for last 12 bases"
    use_regexp: "patterns are regular expression"
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