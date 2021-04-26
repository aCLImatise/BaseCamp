version 1.0

task SeqkitFaidx {
  input {
    Boolean? n__c
    Boolean? one_two
    Boolean? full_head
    Boolean? ignore_case
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
    seqkit faidx \
      ~{seq} \
      ~{if (n__c) then "-1" else ""} \
      ~{if (one_two) then "-12" else ""} \
      ~{if (full_head) then "--full-head" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
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
    full_head: "print full header line instead of just ID. New fasta index file ending with .seqkit.fai will be created"
    ignore_case: "ignore case"
    use_regexp: "IDs are regular expression. But subseq region is not suppored here."
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