version 1.0

task SeqkitLocate {
  input {
    Boolean? bed
    Boolean? degenerate
    Boolean? gtf
    Boolean? hide_matched
    Boolean? ignore_case
    Int? max_mismatch
    Boolean? non_greedy
    Boolean? only_positive_strand
    Int? pattern
    File? pattern_file
    Boolean? use_fmi
    Boolean? use_regexp
    Int? validate_seq_length
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
    seqkit locate \
      ~{if (bed) then "--bed" else ""} \
      ~{if (degenerate) then "--degenerate" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (hide_matched) then "--hide-matched" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if defined(max_mismatch) then ("--max-mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if (non_greedy) then "--non-greedy" else ""} \
      ~{if (only_positive_strand) then "--only-positive-strand" else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(pattern_file) then ("--pattern-file " +  '"' + pattern_file + '"') else ""} \
      ~{if (use_fmi) then "--use-fmi" else ""} \
      ~{if (use_regexp) then "--use-regexp" else ""} \
      ~{if defined(validate_seq_length) then ("--validate-seq-length " +  '"' + validate_seq_length + '"') else ""} \
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
    docker: "None"
  }
  parameter_meta {
    bed: "output in BED6 format"
    degenerate: "pattern/motif contains degenerate base"
    gtf: "output in GTF format"
    hide_matched: "do not show matched sequences"
    ignore_case: "ignore case"
    max_mismatch: "max mismatch when matching by seq. For large genomes like human genome, using mapping/alignment tools would be faster"
    non_greedy: "non-greedy mode, faster but may miss motifs overlapping with others"
    only_positive_strand: "only search on positive strand"
    pattern: "pattern/motif (multiple values supported. Attention: use double quotation marks for patterns containing comma, e.g., -p '\\\"A{2,}\\\"')"
    pattern_file: "pattern/motif file (FASTA format)"
    use_fmi: "use FM-index for much faster search of lots of sequence patterns"
    use_regexp: "patterns/motifs are regular expression"
    validate_seq_length: "length of sequence to validate (0 for whole seq) (default 10000)"
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