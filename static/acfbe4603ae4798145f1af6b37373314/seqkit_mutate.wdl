version 1.0

task SeqkitMutate {
  input {
    Boolean? n__c
    Boolean? one_two
    Boolean? by_name
    Int? deletion
    Boolean? ignore_case
    Int? insertion
    Boolean? invert_match
    Int? pattern
    File? pattern_file
    Int? point_mutation_changing
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
    seqkit mutate \
      ~{seq} \
      ~{if (n__c) then "-1" else ""} \
      ~{if (one_two) then "-12" else ""} \
      ~{if (by_name) then "--by-name" else ""} \
      ~{if defined(deletion) then ("--deletion " +  '"' + deletion + '"') else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if defined(insertion) then ("--insertion " +  '"' + insertion + '"') else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(pattern_file) then ("--pattern-file " +  '"' + pattern_file + '"') else ""} \
      ~{if defined(point_mutation_changing) then ("--point " +  '"' + point_mutation_changing + '"') else ""} \
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
    docker: "None"
  }
  parameter_meta {
    n__c: ":-1                      n\\n2:-2      C G T N a c g t\\n1:-1    A C G T N a c g t n\\n1:12    A C G T N a c g t n"
    one_two: ":-1    A C G T N a c g t n"
    by_name: "[match seqs to mutate] match by full name instead of just id"
    deletion: "deletion mutation: deleting subsequence in a range. e.g., -d 1:2 for deleting leading two bases, -d -3:-1 for removing last 3 bases"
    ignore_case: "[match seqs to mutate] ignore case of search pattern"
    insertion: "insertion mutation: inserting bases behind of given position, e.g., -i 0:ACGT for inserting ACGT at the beginning, -1:* for add * to the end"
    invert_match: "[match seqs to mutate] invert the sense of matching, to select non-matching records"
    pattern: "[match seqs to mutate] search pattern (multiple values supported. Attention: use double quotation marks for patterns containing comma, e.g., -p '\\\"A{2,}\\\"'))"
    pattern_file: "[match seqs to mutate] pattern file (one record per line)"
    point_mutation_changing: "point mutation: changing base at given position. e.g., -p 2:C for setting 2nd base as C, -p -1:A for change last base as A"
    use_regexp: "[match seqs to mutate] search patterns are regular expression"
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