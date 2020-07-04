version 1.0

task SeqkitReplace {
  input {
    Boolean? by_seq
    Boolean? ignore_case
    Boolean? keep_key
    Int? key_capt_idx
    String? key_miss_repl
    String? kv_file
    Int? nr_width
    String? pattern
    String? replacement
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
    seqkit replace \
      ~{flags} \
      ~{true="--by-seq" false="" by_seq} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--keep-key" false="" keep_key} \
      ~{if defined(key_capt_idx) then ("--key-capt-idx " +  '"' + key_capt_idx + '"') else ""} \
      ~{if defined(key_miss_repl) then ("--key-miss-repl " +  '"' + key_miss_repl + '"') else ""} \
      ~{if defined(kv_file) then ("--kv-file " +  '"' + kv_file + '"') else ""} \
      ~{if defined(nr_width) then ("--nr-width " +  '"' + nr_width + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(replacement) then ("--replacement " +  '"' + replacement + '"') else ""} \
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
    by_seq: "replace seq"
    ignore_case: "ignore case"
    keep_key: "keep the key as value when no value found for the key (only for sequence name)"
    key_capt_idx: "capture variable index of key (1-based) (default 1)"
    key_miss_repl: "replacement for key with no corresponding value"
    kv_file: "tab-delimited key-value file for replacing key with value when using \"{kv}\" in -r (--replacement) (only for sequence name)"
    nr_width: "minimum width for {nr} in flag -r/--replacement. e.g., formating \"1\" to \"001\" by --nr-width 3 (default 1)"
    pattern: "search regular expression"
    replacement: "replacement. supporting capture variables.  e.g. $1 represents the text of the first submatch. ATTENTION: for *nix OS, use SINGLE quote NOT double quotes or use the \ escape character. Record number is also supported by \"{nr}\".use ${1} instead of $1 when {kv} given!"
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